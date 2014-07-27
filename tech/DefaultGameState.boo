import System.Linq
		
class DefaultGameState(IGameState):
	private _pieces as List[IChessPiece]
	
	Pieces as List[IChessPiece]:
		get:
			return _pieces
			
	def Prepare(playType as PlayType):
		if playType == PlayType.DarkChess:
			pass
			
	def Peek(coord as IChessCoordinate) as IMaybe[IChessPiece]:
		finds = Pieces.Where({ piece as IChessPiece | piece.Position == coord }).ToList()
		return finds[0] if finds.Count > 0
		return null
			
		
	def Move(piece as IChessPiece, coord as IChessCoordinate) as bool:
		return true