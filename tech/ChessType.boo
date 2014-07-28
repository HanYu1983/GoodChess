
enum ChessType:
	Unknown
	King		//generals * 1
	Advisor		//guards * 2
	Elephant	//* 2 
	Rook		//chariots * 2
	Knight		//horses * 2
	Cannon		// * 2
	Pawn		//soliders * 5
	
	
	
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
		