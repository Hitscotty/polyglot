{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}
{-# LANGUAGE FlexibleContexts #-}


module Models.Barnes (books) where

import Database.MongoDB 
import Database.MongoDB    (Action, Document, Document, Value, access,
                            close, connect, delete, exclude, find,
                             insertMany, master, project, rest, allCollections, Host,
                            select, ObjectId, valueAt, typed, sort, (=:), PortID(..))

import Control.Monad.Trans 
import Data.Text (pack)

mydb = Host "ds129018.mlab.com" (PortNumber 29018)

data MongoAuth = MongoAuth Username Password

scott = Just (MongoAuth (pack "barnesadmin") (pack "barnes123"))
--testAccess ::  -> Database -> Maybe MongoAuth -> IO ()
testAccess pipe dbname mAuth = do
       _ <- case mAuth of
         Just (MongoAuth user pass) -> access pipe UnconfirmedWrites dbname (auth user pass)
         Nothing -> return undefined
       return ()

runMongo f = do 
   pipe <- connect mydb
   testAccess pipe (pack "barnes-api") scott
   e <- access pipe master (pack "barnes-api") f
   doStuff e
   close pipe

doStuff n = do
   print "e"

runQuery query = runMongo $ (find (select [] (pack query)))

getObjId :: Document -> ObjectId
getObjId = typed . (valueAt "_id")

books :: IO ()
books = undefined
