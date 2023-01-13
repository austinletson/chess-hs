module World (World, Board, Piece, validate, CandidateMoveVector, RelativeMoveVector) where

-- import Data.Map (Map)
-- import qualified Data.Map as Map

type Board a = [[Maybe a]]

-- type World a = (Board a, Map a Int)
type World a = (Board a, [a])

-- class Piece a where
--   fakeMethod :: a -> a

class Piece a where
    validate :: World a -> Move -> Maybe (World a)

type Validation a = World a -> Move -> Maybe (World a)


type RelativeMoveVector = (Int, Int)
type BoardPosition = (Int, Int)

type Move = (BoardPosition, RelativeMoveVector)

data CandidateMoveVector = 
  BoardBoard (Int, Int) (Int, Int) |
  BoardHand (Int, Int) Int |
  HandBoard Int (Int, Int)
  
