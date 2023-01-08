{-# LANGUAGE OverloadedStrings #-}

module Db where

import Data.Aeson
import qualified Data.Text.Lazy as TL
import qualified Data.Map as M
import Database.PostgreSQL.Simple.FromRow

data User
  = User
  { uId :: Int
  , uEmail :: TL.Text
  , uName  :: TL.Text
  } deriving (Show)

type Users = M.Map Integer User

instance FromRow User where
  fromRow = User <$> field <*> field <*> field

instance FromJSON User where
  parseJSON (Object o) =
    User <$> o .:? "id" .!= 0
      <*> o .: "email"
      <*> o .: "name"
  parseJSON _ = fail "Failed parsing JSON for User"

instance ToJSON User where
  toJSON (User uId uEmail uName) =
    object
      [ "id" .= uId,
        "email" .= uEmail,
        "name" .= uName
      ]
