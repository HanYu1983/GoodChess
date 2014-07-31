
interface IMatch:
	PlayerA as IMaybe[IPlayer]:
		get; set;
	PlayerB as IMaybe[IPlayer]:
		get; set;
	CurrentPlayer as IMaybe[IPlayer]:
		get;
	GameState as IGameState:
		get;
	Phase as MatchPhase:
		get;
	def StartMatch()
	def EndMatch()
	def NextPlayer()