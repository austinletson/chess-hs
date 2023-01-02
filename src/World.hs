module World (Test) where

import Data.HashMap

type Board = [[Maybe ChessPiece]]

type World = (Board, (Map ChessPiece Int))

data ChessPiece = Pawn | Bishop | Knight | Rook | King | Queen

-- class Piece a where
--     validate :: World -> CandidateMoveVector -> Maybe World 

-- data CandidateMoveVector = 
--   BoardBoard (Int, Int) (Int, Int) |
--   HandBoard Piece (Int, Int) |
  
