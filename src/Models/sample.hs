{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Sample  where

import qualified Data.Text.Lazy           as T
import           Web.Scotty               as S
import           Web.Scotty.Login.Session

conf :: SessionConfig
conf = defaultSessionConfig

main :: IO ()
main = do
  initializeCookieDb conf
  scotty 8000 routes

routes :: ScottyM ()
routes = do
  S.get "/denied" $ S.text "access denied"
  S.get "/login" $ do S.html $ T.pack $ unlines $
                        [ "<form method=\"POST\" action=\"/login\">"
                        , "<input type=\"text\" name=\"username\">"
                        , "<input type=\"password\" name=\"password\">"
                        , "<input type=\"submit\" name=\"login\" value=\"login\">"
                        , "</form>" ]
  S.post "/login" $ do
    (usn :: String) <- param "username"
    (pass :: String) <- param "password"
    if usn == "guest" && pass == "password"
      then do addSession conf
              redirect "/authed"
      else do redirect "/denied"
  S.get "/authcheck" $ authCheck (redirect "/denied") $
    S.text "authorized"
