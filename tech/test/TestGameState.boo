		
class TestGameState(TestBase):
	# Use this for initialization
	def Start ():
		gameState as IGameState = DefaultGameState()
		Should( gameState.PrepareBoard.Count == 32, "0")
		
		gameState.Prepare(PlayType.DarkChess)
		Should( gameState.PrepareBoard.Count == 0, "1")
		for coord in ChessCoordinate.DarkChessAllCoordinates:
			Should( gameState.PlayBoard[coord.Y, coord.X] is not null, "should not null!")
		
		gameState.ClearBoard()
		Should( gameState.PrepareBoard.Count == 32, "2")
		for coord in ChessCoordinate.DarkChessAllCoordinates:
			Should( gameState.PlayBoard[coord.Y, coord.X] is null, "should is null!")