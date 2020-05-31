module RPN.Calc (
    calc
) where

calc :: [String] -> [String]
calc expr = foldl (rpnFold) [] expr

rpnFold :: [String] -> String -> [String]
rpnFold all@(rhs:lhs:stack) operator =
    case (lookup operator operators) of
        Just op -> (show ((read lhs :: Float) `op` (read rhs :: Float))):stack
        Nothing -> operator:all
rpnFold stack item = item:stack

operators :: (Floating a) => [(String, (a -> a -> a))]
operators = [ ("*", (*))
            , ("/", (/))
            , ("+", (+))
            , ("-", (-))
            , ("^", (**))
            ]