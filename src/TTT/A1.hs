module TTT.A1 where

import Data.Char (toUpper)

-- Q#01

_SIZE_ :: Int 
_SIZE_ = 3


-- Q#02

_DISPLAY_LOGO_ = undefined

-- Q#03

convertRowIndex :: Char -> Int
convertRowIndex idx = fromEnum (toUpper idx) - 65

-- Q#04

_INVALID_MOVE_ :: (Int, Int)
_INVALID_MOVE_ = (-1, -1)


-- Q#05

_SEP_ :: [Char] 
_SEP_ = "_|_" 

head_SEP_ :: [Char] 
head_SEP_ =  "_" 

last_SEP_ :: [Char] 
last_SEP_ = "_" 

-- Q#06

data Square = X | O | E
  deriving (Show, Eq)
-- Q#07

data GameState = XWon | OWon | Tie | InProgress
  deriving (Show, Eq)
-- Q#08

type Player = Square

type Row = [Square]

type Line = [Square]

type Board = [Row]

type Move = (Int, Int)

-- Q#09

getFirstPlayer :: Bool -> [Char]
getFirstPlayer t = 
    if t == True
        then " X "
        else " O "

getFirstPlayer1 :: Bool -> Player
getFirstPlayer1 boolValue = if boolValue then X else O

getFirstPlayer2 :: Bool -> Player  --conditional "case"
getFirstPlayer2 boolValue2
  | boolValue2 = X
  | otherwise = O


-- Q#10

showGameState :: GameState -> String
showGameState gs = case gs of
  XWon -> "Player X wins!"
  OWon -> "Player O wins!"
  Tie -> "Tie game!"
  InProgress -> "Game is in progress"

-- Q#11

switchPlayer :: Player -> Player
switchPlayer X = O
switchPlayer O = X
switchPlayer E = E


-- Q#12

showSquare :: Square -> String
showSquare X = "X"
showSquare O = "O"
showSquare _ = "_"  --I defined in data Square E as empty