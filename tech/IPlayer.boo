		
interface IPlayer:
	Team as PieceTeam:
		get; set;
	Controller as IMaybe[IPlayerController]:
		get; set;
	def MovePiece(piece as IChessPiece, coord as IChessCoordinate)