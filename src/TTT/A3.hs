module TTT.A3 where

import Data.List (transpose)
import TTT.A1
import TTT.A2

-- Q#01

showInts :: [Int] -> [String]
showInts (i : is) = show i : showInts is
showInts [] = []

_HEADER_ :: String
_HEADER_ = ' ' : formatLine (showInts _RANGE_)

-- Q#02

showSquares :: [Square] -> [String]
showSquares (s : ss) = showSquare s : showSquares ss
showSquares [] = []

-- Q#03

formatRows :: [Row] -> [String]
formatRows (r : rs) = formatLine (showSquares r) : formatRows rs
formatRows [] = []

-- Q#04

isColEmpty :: Row -> Int -> Bool
isColEmpty [] _ = False
isColEmpty (c : _) 0 = c == E
isColEmpty (_ : cs) j
  | j > 0 = isColEmpty cs (j - 1)
  | otherwise = False
-- Q#05

dropFirstCol = undefined

dropLastCol = undefined

-- Q#06

getDiag1 = undefined

getDiag2 = undefined

getAllLines = undefined

-- Q#07

putSquare = undefined

-- Q#08

prependRowIndices = undefined

-- Q#09

isWinningLine_ = undefined

-- Q#10

isValidMove = undefined