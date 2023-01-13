module Chess where

import Data.Map (Map)
import qualified Data.Map as Map
import World

chessWorld :: World ChessPiece
chessWorld = (chessBoard, chessHand)

chessBoard :: Board ChessPiece
chessBoard = [[Just Pawn, Just Pawn], [Nothing, Just Bishop]]

chessHand :: Map ChessPiece Int
chessHand = Map.fromList $ zip [Pawn ..] (repeat 0)

data ChessPiece = Pawn | Bishop | Knight | Rook | King | Queen deriving (Enum, Eq, Ord, Show)

instance Piece ChessPiece where
  validate =  

chessMoveVectors :: ChessPiece -> [RelativeMoveVector]
chessMoveVectors piece
  | piece == Pawn = []
  | piece == Bishop = [(x,y) | x <- [-7..7],
                               y <- [-7..7],
                               abs x == abs y]
  | piece == Knight = []
  | piece == Rook = []
  | piece == King = []
  | piece == Queen = []
