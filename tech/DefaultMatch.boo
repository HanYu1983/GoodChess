		
class DefaultMatch(IMatch):
	_playerA = None[of IPlayer]()
	_playerB = None[of IPlayer]()
	_gameState = DefaultGameState()
	_phase = MatchPhase.Idle
	_currentPlayer as IMaybe[IPlayer]
	
	PlayerA as IMaybe[IPlayer]:
		get:
			return _playerA
		set:
			_playerA = value
			
	PlayerB as IMaybe[IPlayer]:
		get:
			return _playerB
		set:
			_playerB = value
			
	CurrentPlayer as IMaybe[IPlayer]:
		get:
			return _currentPlayer
		set:
			_currentPlayer = value
			
	GameState as IGameState:
		get:
			return _gameState
			
	Phase as MatchPhase:
		get:
			return _phase
		set:
			_phase = value
			
	def StartMatch():
		GameState.Prepare(PlayType.DarkChess)
		CurrentPlayer = PlayerA
		Phase = MatchPhase.Playing
		
	def EndMatch():
		GameState.ClearBoard()
		Phase = MatchPhase.Idle
		
	def NextPlayer():
		if CurrentPlayer is PlayerB:
			CurrentPlayer = PlayerA
		else:
			CurrentPlayer = PlayerB	