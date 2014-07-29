		
interface IGameState:
	PrepareBoard as List[IChessPiece]:
		get;
	PlayBoard as (IChessPiece, 2):
		get;
	def Prepare(playType as PlayType)
	def ClearBoard()
	def CoordinateFromPiece(piece as IChessPiece) as object	//tuple(bool, IChessCoordinate)
	def Peek(coord as IChessCoordinate) as IMaybe[IChessPiece]
	def Move(piece as IChessPiece, coord as IChessCoordinate) as bool