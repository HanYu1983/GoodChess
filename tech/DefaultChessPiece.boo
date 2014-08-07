		
class DefaultChessPiece(IChessPiece):
	_face as PieceFace = PieceFace.Down
	_team as PieceTeam = PieceTeam.Unknown
	_type as ChessType = ChessType.Unknown
	
	public final static AllPieces as List[IChessPiece] = List[of IChessPiece]([
		// team red 16 pieces
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.King),
		
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Advisor),
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Advisor),
		
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Elephant),
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Elephant),
		
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Rook),
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Rook),
		
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Knight),
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Knight),
		
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Cannon),
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Cannon),
		
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Pawn),
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Pawn),
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Pawn),
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Pawn),
		DefaultChessPiece(Team:PieceTeam.Rad, Type:ChessType.Pawn),
		
		// team black 16 pieces
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.King),
		
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Advisor),
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Advisor),
		
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Elephant),
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Elephant),
		
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Rook),
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Rook),
		
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Knight),
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Knight),
		
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Cannon),
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Cannon),
		
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Pawn),
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Pawn),
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Pawn),
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Pawn),
		DefaultChessPiece(Team:PieceTeam.Black, Type:ChessType.Pawn),
	]) 
	
	override def ToString():
		return "Piece($Team $Type $Face)"
	
	Face as PieceFace:
		get:
			return _face
		set:
			_face = value
			
	Team as PieceTeam:
		get:
			return _team
		set:
			_team = value
			
	Type as ChessType:
		get:
			return _type
		set:
			_type = value