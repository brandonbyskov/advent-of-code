module AOC2019
  ( puzzle1
  , puzzle2
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

puzzle2 :: IO Int
puzzle2 = do inputs <- readFileLines "data/input1.txt"
             return $ puzzle2' inputs
  where
    puzzle2' :: [Int] -> Int
    puzzle2' xs = sum $ fmap fuelNeeded xs
    fuelNeeded :: Int -> Int
    fuelNeeded mass
          | mass <= 8 = 0
          | otherwise = let fuelMass = (mass `div` 3) - 2
                        in fuelMass + fuelNeeded fuelMass


readFileLines :: String -> IO [Int]
readFileLines filename = fmap read <$> lines <$> readFile filename
