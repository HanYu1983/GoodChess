		
interface IMatch:
	pieces as List[IChessPiece]:
		get;
	def Prepare(playType as PlayType)
	def Peek(coord as IChessCoordinate) as IChessPiece
	def Move(piece as IChessPiece, coord as IChessCoordinate) as bool