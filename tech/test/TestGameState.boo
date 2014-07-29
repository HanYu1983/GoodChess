		
class TestGameState(TestBase):
	# Use this for initialization
	def Start ():
		gameState as IGameState = DefaultGameState()
		Should( gameState.PrepareBoard.Count == 32, "0")
		
		gameState.Prepare(PlayType.DarkChess)
		Should( gameState.PrepareBoard.Count == 0, "1")
		for coord in ChessCoordinate.DarkChessAllCoordinates:
			Should( gameState.PlayBoard[coord.Y, coord.X] is not null, "should not null!")
		
		searchCoord = ChessCoordinate(Y:1, X:1)
		isFind, findCoord = gameState.CoordinateFromPiece( gameState.Peek(searchCoord).Instance )
		Should( isFind and searchCoord == findCoord, "find-1")
		
		searchCoord = ChessCoordinate(Y:3, X:3)
		isFind, findCoord = gameState.CoordinateFromPiece( gameState.Peek(searchCoord).Instance )
		Should( isFind and searchCoord == findCoord, "find-2")
		
		gameState.ClearBoard()
		Should( gameState.PrepareBoard.Count == 32, "2")
		for coord in ChessCoordinate.DarkChessAllCoordinates:
			Should( gameState.PlayBoard[coord.Y, coord.X] is null, "should is null!")
			
		searchCoord = ChessCoordinate(Y:3, X:3)
		isFind, _ = gameState.CoordinateFromPiece( gameState.PrepareBoard[0] )
		Should( not isFind, "find-3")