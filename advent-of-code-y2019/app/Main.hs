module Main where

import AOC2019

main :: IO ()
main = do putStrLn =<< ("Puzzle 1: " <>) <$> show <$> puzzle1
          putStrLn =<< ("Puzzle 2: " <>) <$> show <$> puzzle2
