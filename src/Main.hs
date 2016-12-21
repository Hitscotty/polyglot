{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import System.IO (readFile)
import Data.Time (getCurrentTime)
import Data.Aeson (FromJSON, ToJSON)
import GHC.Generics
import Web.Scotty
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
matchesId :: Int -> User -> Bool
matchesId id user = userId user == id

-- | routing section 
routes :: ScottyM ()
routes = do
  get "/members/:name" $ do
    name <- param "name"
    text ("welcome " <> name <> " to the members view!")

  get "/users" $ do
    json allUsers

  get "/users/:id" $ do
    id <- param "id"
    json (filter (matchesId id) allUsers)

  get "/" $ do
    html "<h1> Polyglot </h1>"

main :: IO ()
main = do
  putStrLn "starting server..."
  scotty 3000 routes
