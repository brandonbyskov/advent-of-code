module AOC2019
    ( puzzle1
    ) where

puzzle1 :: IO Int
puzzle1 = do inputs <- readFileLines "data/input1.txt"
             return $ puzzle1' inputs
  where
    puzzle1' :: [Int] -> Int
    puzzle1' xs = sum $ fmap fuelNeeded xs
    fuelNeeded :: Int -> Int
    fuelNeeded a
      | a <= 8    = 0
      | otherwise = (a `div` 3) - 2

readFileLines :: String -> IO [Int]
readFileLines filename = fmap read <$> lines <$> readFile filename
