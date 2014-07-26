
enum ChessType:
	King		//generals
	Advisor		//guards
	Elephant	
	Rook		//chariots
	Knight		//horses
	Cannon	
	Pawn		//soliders
	
	
	
def StrongerThen(fromType as ChessType, toType as ChessType) as bool:
	if fromType == ChessType.King:
		return false if toType == ChessType.Pawn
		return true
	
	elif fromType == ChessType.Cannon:
		return true
		
	elif fromType == ChessType.Pawn:
		return true if toType in [ChessType.King, ChessType.Pawn]
		return false
	
	else:
		return false if toType < fromType
		return true
		