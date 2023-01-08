{-# LANGUAGE OverloadedStrings #-}

module Routes where

import qualified Web.Scotty as S

app port = S.scotty port $ do
  S.get "/" $
    S.text "ok"
