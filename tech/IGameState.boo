		
interface IGameState:
	PrepareBoard as List[IChessPiece]:
		get;
	PlayBoard as (IChessPiece, 2):
		get;
	def Prepare(playType as PlayType)
	def ClearBoard()	
	def Peek(coord as IChessCoordinate) as IMaybe[IChessPiece]
	def Move(piece as IChessPiece, coord as IChessCoordinate) as bool