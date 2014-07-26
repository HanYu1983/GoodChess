import UnityEngine
		
class TestCoordinate(TestBase):
	
	def Start ():
		Should( ChessCoordinate(5,5).NextStep(ChessType.Pawn) == [ChessCoordinate(6,5),ChessCoordinate(5,6),ChessCoordinate(4,5),ChessCoordinate(5,4)], "Pawn" )
		
		

