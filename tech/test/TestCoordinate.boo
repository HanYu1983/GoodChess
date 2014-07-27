		
class TestCoordinate(TestBase):
	
	def Start ():
		Should( ChessCoordinate(X:5,Y:5).NextStep(PlayType.DarkChess, ChessType.Pawn) == [ChessCoordinate(X:6,Y:5),ChessCoordinate(X:5,Y:6),ChessCoordinate(X:4,Y:5),ChessCoordinate(X:5,Y:4)], "Pawn" )
		
		

