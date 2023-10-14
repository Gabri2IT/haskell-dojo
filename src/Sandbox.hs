-- ./sbox

module Sandbox where
import Data.Char (toUpper)

hello = "welcome 1"
x = 2.0
z = 'I'
y = 3.1
w = x + y

_SIZE_ :: Int 
_SIZE_ = 3



indexLett = 'a'
helloUp = toUpper 'h'
letterUp = toUpper (indexLett)


-- identity m = m
-- toUpper (identity 'i')

-- convertRowIndex :: Char -> Char 
-- convertRowIndex a = toUpper a 
-- deriving show
-- toUpper c fromEnum (toUpper c (fromEnum (toUpper c)) - 65

convertRowIndex :: Char -> Int
convertRowIndex idx = fromEnum (toUpper idx) - 65


_INVALID_MOVE_ :: (Int, Int)
_INVALID_MOVE_ = (-1, -1)


_SEP_ :: [Char] 
_SEP_ = "_|_" 

head_SEP_ :: [Char] 
head_SEP_ =  "_" 

last_SEP_ :: [Char] 
last_SEP_ = "_" 

data Square = X | O | E
  deriving (Show, Eq)


data GameState = XWon | OWon | Tie | InProgress
  deriving (Show, Eq)


type Player = Square

type Row = [Square]

type Line = [Square]

type Board = [Row]

type Move = (Int, Int)


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


showGameState :: GameState -> String
showGameState gs = case gs of
  XWon -> "Player X wins!"
  OWon -> "Player O wins!"
  Tie -> "Tie game!"
  InProgress -> "Game is in progress"


switchPlayer :: Player -> Player
switchPlayer X = O
switchPlayer O = X
switchPlayer E = E


showSquare :: Square -> String
showSquare X = "X"
showSquare O = "O"
showSquare _ = "_"  --I defined in data Square E as empty