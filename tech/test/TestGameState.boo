import UnityEngine
		
class TestGameState(TestBase):
	# Use this for initialization
	def Start ():
		gameState = DefaultGameState()
		gameState.Prepare(PlayType.DarkChess)
		Should( gameState.PrepareBoard.Count == 32, "0")
		Debug.Log( gameState.Peek(ChessCoordinate(X:0, Y:0)).Instance )
		