{-# language OverloadedStrings #-}

module Main where

import qualified Web.Scotty as S

main :: IO ()
main = do
  S.scotty 8080 app

app :: S.ScottyM ()
app = do
  S.get "/" $
    S.text "ok"


