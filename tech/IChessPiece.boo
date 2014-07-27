		
interface IChessPiece:
	Face as PieceFace:
		get; set;
	Place as PiecePlace:
		get; set;
	Type as ChessType:
		get;
	Position as IChessCoordinate:
		get; set;