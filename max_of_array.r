module Main
import Data.Maybe
import Data.Strings
import Data.List

str2int : String -> Int
str2int elem = fromMaybe 0 $ (parseInteger {a=Int} elem)

findMax : List Int -> Int
findMax [] = 0
findMax [x] = x
findMax (x::y::xs) = if x >= y then findMax (x::xs) else findMax (y::xs)

findMin : List Int -> Int
findMin [] = 0
findMin [x] = x
findMin (x::y::xs) = if x <= y then findMin (x::xs) else findMin (y::xs)

main : IO ()
main = do
  strInput <- getLine
  let intArr = map str2int (words strInput)
  let maxELem = cast (findMax intArr)
  let minElem = cast (findMin intArr)
  let result = maxELem ++ " " ++ minElem
  putStrLn result