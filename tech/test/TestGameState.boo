import UnityEngine
		
class TestGameState(TestBase):
	# Use this for initialization
	def Start ():
		gameState as IGameState = DefaultGameState()
		Should( gameState.PrepareBoard.Count == 32, "0")
		
		gameState.Prepare(PlayType.DarkChess)
		Should( gameState.PrepareBoard.Count == 0, "1")
		
		for coord in ChessCoordinate.DarkChessAllCoordinates:
			Debug.Log( coord +"," + gameState.PlayBoard[coord.Y, coord.X] )