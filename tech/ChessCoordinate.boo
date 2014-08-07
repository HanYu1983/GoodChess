		
class ChessCoordinate(IChessCoordinate):
	
	_x as int
	_y as int
	
	X as int:
		get:
			return _x
		set:
			_x = value
			
	Y as int:
		get:
			return _y
		set:
			_y = value
			
	static DarkChessAllCoordinates:
		get:
			return (ChessCoordinate(X:x, Y:y) for x in range(8) for y in range(4))
		
	override def ToString():
		return "($X, $Y)"
		
	override def Equals(other):
		coord = other as ChessCoordinate
		if coord is not null:
			return true if X == coord.X and Y == coord.Y
			return false
		else:
			return false
			
	def NextStep(playType as PlayType, type as ChessType) as List:
		if playType == PlayType.DarkChess:
			return [ChessCoordinate(X:X+1, Y:Y),ChessCoordinate(X:X, Y:Y+1),ChessCoordinate(X:X-1, Y:Y),ChessCoordinate(X:X, Y:Y-1)]
			
		return []
		
		
	
	