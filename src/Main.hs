module Main (main) where

import RPN.Calc
import System.IO

main :: IO ()
main = do
    putStr "Expression: "
    hFlush stdout
    expr <- getLine
    putStrLn ("Result: " ++ (last . calc . words $ expr))
