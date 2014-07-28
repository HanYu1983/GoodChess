import UnityEngine
		
class TestGameState(TestBase):
	# Use this for initialization
	def Start ():
		gameState = DefaultGameState()
		Should( gameState.PrepareBoard.Count == 32, "0")
		
		gameState.Prepare(PlayType.DarkChess)
		Should( gameState.PrepareBoard.Count == 0, "1")
		
		for coord in gameState.AllCoordinates:
			Debug.Log( gameState.PlayBoard[coord.Y, coord.X] )