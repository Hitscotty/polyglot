{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import System.IO (readFile)
import Data.Time (getCurrentTime)
import Data.Aeson (FromJSON, ToJSON)
import GHC.Generics
import qualified Web.Scotty as S
import qualified Text.Blaze.Html5 as H
import qualified Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html.Renderer.Text
import Network.Wai.Middleware.RequestLogger
import qualified Views.Index
import Data.Monoid ((<>))

data User = User { userId :: Int, userName :: String } deriving (Show, Generic)

instance ToJSON User
instance FromJSON User

bob :: User
bob = User { userId = 1, userName = "bob" }

jenny :: User
jenny = User { userId = 2, userName = "jenny" }

allUsers :: [User]
allUsers = [bob, jenny]

-- | middleware section
blaze :: H.Html -> S.ActionM ()
blaze = S.html . renderHtml

matchesId :: Int -> User -> Bool
matchesId id user = userId user == id

-- | routing section 
routes :: S.ScottyM ()
routes = do  
  S.get "/" $ do
    blaze Views.Index.navbar
   
  S.get "/members" $ do
    S.html . renderHtml $ do
      H.h1  " Members "

  S.get "/members/:name" $ do
    name <- S.param "name"
    S.text ("welcome " <> name <> " to the members view!")

  S.get "/users" $ do
    S.json allUsers

  S.get "/users/:id" $ do
    id <- S.param "id"
    S.json (filter (matchesId id) allUsers)

main :: IO ()
main = do
  putStrLn "starting server..."
  S.scotty 3000 routes
