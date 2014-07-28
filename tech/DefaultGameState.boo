import System.Linq
		
class DefaultGameState(IGameState):
	_prepareBoard as List[IChessPiece] = List[of IChessPiece]()
	_playBoard as List[of List[of IChessPiece]] = List[of List[of IChessPiece]]()
	
	PrepareBoard as List[IChessPiece]:
		get:
			return _prepareBoard
			
	PlayBoard as List[of List[of IChessPiece]]:
		get:
			return _playBoard
			
	def Prepare(playType as PlayType):
		if playType == PlayType.DarkChess:
			_prepareBoard = List[of IChessPiece]( DefaultChessPiece.AllPieces )
			for i in range(4):
				_playBoard.Add(List[of IChessPiece]([null,null,null,null,null,null,null,null]))
			
					
				
	def AddPieceToPlayBoard(piece as IChessPiece, pos as IChessCoordinate):
		finds = PrepareBoard.Where({x | x == piece}).ToList()
		isExist = finds.Count > 0
		if isExist:
			PrepareBoard.Remove(finds[0])
			if PlayBoard[pos.Y][pos.X] is not null:
				PrepareBoard.Add(PlayBoard[pos.Y][pos.X])
				PlayBoard[pos.Y][pos.X] = null
			PlayBoard[pos.Y][pos.X] = finds[0]
			
	def Peek(coord as IChessCoordinate) as IMaybe[IChessPiece]:
		find = PlayBoard[coord.Y][coord.X]
		return Just[of IChessPiece](Instance:find) if find is not null
		return None[of IChessPiece]()
		
	def Move(piece as IChessPiece, coord as IChessCoordinate) as bool:
		return true