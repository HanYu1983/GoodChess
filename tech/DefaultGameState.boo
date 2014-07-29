import System.Linq

class DefaultGameState(IGameState):
	_prepareBoard as List[IChessPiece] = List[of IChessPiece]( DefaultChessPiece.AllPieces )
	_playBoard = matrix(IChessPiece, 8, 8)	// use 4,8 for darkchess
	
	PrepareBoard as List[IChessPiece]:
		get:
			return _prepareBoard
			
	PlayBoard as (IChessPiece, 2):
		get:
			return _playBoard
			
	def Prepare(playType as PlayType):
		if playType == PlayType.DarkChess:
			for piece, coord in zip(DefaultChessPiece.AllPieces, ChessCoordinate.DarkChessAllCoordinates):
				AddPieceToPlayBoard(piece, coord)
				
	def ClearBoard():
		for findPiece as IChessPiece in (PlayBoard[coord.Y, coord.X] for coord in ChessCoordinate.DarkChessAllCoordinates):
			RemovePieceFromPlayBoard(findPiece)
				
	def AddPieceToPlayBoard(piece as IChessPiece, pos as IChessCoordinate):
		finds = PrepareBoard.Where({x | x == piece}).ToList()
		isExist = finds.Count > 0
		if isExist:
			PrepareBoard.Remove(finds[0])
			if PlayBoard[pos.Y, pos.X] is not null:
				PrepareBoard.Add(PlayBoard[pos.Y,pos.X])
				PlayBoard[pos.Y, pos.X] = null
			PlayBoard[pos.Y,pos.X] = finds[0]
	
	def RemovePieceFromPlayBoard(piece as IChessPiece):
		return if piece is null
		for coord as IChessCoordinate, findPiece as IChessPiece in ((coord, PlayBoard[coord.Y, coord.X]) for coord in ChessCoordinate.DarkChessAllCoordinates):
			isExist = findPiece is piece
			if isExist:
				PrepareBoard.Add(findPiece)
				PlayBoard[coord.Y, coord.X] = null;
	
	def CoordinateFromPiece(piece as IChessPiece) as object:
		whereFn = do(pair):
			_, find = pair
			return find is piece
		finds = [(coord, PlayBoard[coord.Y, coord.X]) for coord in ChessCoordinate.DarkChessAllCoordinates].Where(whereFn).ToList()
		isExist = finds.Count > 0
		if isExist:
			coord, _ = finds[0]
			return true, coord
		else:
			return false, null
	
	def Peek(coord as IChessCoordinate) as IMaybe[IChessPiece]:
		find = PlayBoard[coord.Y, coord.X]
		return Just[of IChessPiece](Instance:find) if find is not null
		return None[of IChessPiece]()
		
	def Move(piece as IChessPiece, coord as IChessCoordinate) as bool:
		isFind, originCoord as IChessCoordinate = CoordinateFromPiece(piece)
		if isFind:
			maybeTarget = Peek(coord)
			if maybeTarget.IsExist:
				if StrongerThen( piece, maybeTarget.Instance ):
					RemovePieceFromPlayBoard(maybeTarget.Instance)
					PlayBoard[originCoord.Y, originCoord.X] = null;
					PlayBoard[coord.Y, coord.X] = piece;
					return true
				else:
					return false
			else:
				PlayBoard[originCoord.Y, originCoord.X] = null;
				PlayBoard[coord.Y, coord.X] = piece;
				return true
		else:
			return false