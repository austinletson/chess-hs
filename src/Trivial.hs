module Trivial where

import World


trivialWorld :: World TrivialPiece
trivialWorld = (trivialBoard, trivialHand)

-- A trivial board is simple 2x2 board containing 2 Triv and 2 Nothing
trivialBoard :: Board TrivialPiece
trivialBoard = [[Just Triv, Nothing], [Nothing, Just Triv]]

-- The trivial hand is always empty
trivialHand :: [TrivialPiece]
trivialHand = []

data TrivialPiece = Triv | TrivM deriving (Enum, Eq, Ord, Show)

-- The validation for a trivial board always returns the same board
instance Piece TrivialPiece where
  validate w ((0, 0), moveVector) = Just w  
  validate w ((1, 0), moveVector) = Just w  
  validate w ((0, 1), moveVector) = Just w  
  validate w ((1, 1), moveVector) = Just w  
  validate _ _ = Nothing

trivialMoveVectors :: TrivialPiece -> [RelativeMoveVector]
trivialMoveVectors Triv = []
trivialMoveVectors TrivM = [(1, 0), (0, 1), (-1, 0), (0, -1)]
