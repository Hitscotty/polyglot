{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Controllers.Home (home
                        ,login
                        ,polyglots
                        ) where 

import Views.Home (homeView, registerView, polyglotView)
import Models.Barnes
import Web.Scotty

home :: ScottyM ()
home = get "/" homeView

login :: ScottyM ()
login = do 
   get "/register" registerView

polyglots :: ScottyM ()
polyglots = get "/polyglots" polyglotView
