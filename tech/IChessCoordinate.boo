
interface IChessCoordinate:
	X as int:
		get;
	Y as int:
		get;
	def NextStep(type as ChessType) as List