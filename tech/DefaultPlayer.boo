
		
class DefaultPlayer(IPlayer, IRequireMatch):
	_team = PieceTeam.Unknown
	_controller as IMaybe[IPlayerController] = None[of IPlayerController]
	_match as IMatch
	
	Team as PieceTeam:
		get:
			return _team
		set:
			_team = value
			
	Controller as IMaybe[IPlayerController]:
		get:
			return _controller		
		set:
			if value.IsExist:
				_controller = value
				_controller.Instance.Owner = self
				
	Match as IMatch:
		set:
			_match = value
						
	def MovePiece(piece as IChessPiece, coord as IChessCoordinate):
		_match.GameState.Move( piece, coord )