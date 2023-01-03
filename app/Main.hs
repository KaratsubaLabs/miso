{-# language OverloadedStrings #-}

module Main where

import qualified Web.Scotty as S
import qualified Data.Text.Lazy as TL
import qualified Data.Map as M

data User
  = User
  { uEmail :: TL.Text
  , uName  :: TL.Text
  } deriving (Show)

type Users = M.Map Integer User

main :: IO ()
main = do
  S.scotty 8080 app

app :: S.ScottyM ()
app = do
  S.get "/" $
    S.text "ok"

-- createDummyUsers :: IO Users
-- createDummyUsers = do
  
