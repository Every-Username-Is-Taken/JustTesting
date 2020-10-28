-- string to numbers using foldl
module StringToNum where
import Data.Char
-- solution using foldl (not mine)
charToNum :: Char -> Int
charToNum c 
    | (c <= '9' && c >= '0') = ord c - ord '0'
 
addDigit :: Int -> Char -> Int
addDigit x c = x*10 + charToNum c

strToInt :: String -> Int
strToInt = foldl addDigit 0

-- my solution
strToInt' :: [Char] -> Int
strToInt' xs = foldl (\x y -> x*10 + y) 0 $ map digitToInt xs
