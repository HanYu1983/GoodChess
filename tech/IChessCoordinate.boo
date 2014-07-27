
interface IChessCoordinate:
	X as int:
		get;
	Y as int:
		get;
	def NextStep(playType as PlayType, type as ChessType) as List