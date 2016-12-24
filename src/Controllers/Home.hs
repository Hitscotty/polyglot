{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Controllers.Home (home
                        ,login
                        ) where 

import Views.Home (homeView, registerView)
import Models.Barnes
import Web.Scotty

home :: ScottyM ()
home = get "/" homeView

login :: ScottyM ()
login = do 
   get "/register" registerView

