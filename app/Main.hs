module Main where

import Routes (app)

main :: IO ()
main = do
   app 8080

