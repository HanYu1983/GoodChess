		
interface IGameState:
	
	PrepareBoard as List[IChessPiece]:
		get;
	PlayBoard as List[of List[of IChessPiece]]:
		get;
		
	def Prepare(playType as PlayType)
	def Peek(coord as IChessCoordinate) as IMaybe[IChessPiece]
	def Move(piece as IChessPiece, coord as IChessCoordinate) as bool