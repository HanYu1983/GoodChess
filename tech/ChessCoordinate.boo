import UnityEngine
		
class ChessCoordinate(IChessCoordinate):
	
	private _x as int
	private _y as int
	
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
			
	def constructor(x, y):
		_x = x
		_y = y
		
	override def ToString():
		return "("+X+","+Y+")"
		
	override def Equals(other):
		coord = other as ChessCoordinate
		if not coord == null:
			return true if X == coord.X and Y == coord.Y
			return false
		else:
			return false
			
	def NextStep(playType as PlayType, type as ChessType) as List:
		if playType == PlayType.DarkChess:
			return [ChessCoordinate(X+1, Y),ChessCoordinate(X, Y+1),ChessCoordinate(X-1, Y),ChessCoordinate(X, Y-1)]
			
		return []
		
		
	
	