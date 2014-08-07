		
class TestMatch(TestBase):
	def Start ():
		playerA = None[of IPlayer]()
		playerB = None[of IPlayer]()
		
		gameMatch as IMatch = DefaultMatch(PlayerA: playerA, PlayerB: playerB)
		Should( gameMatch.Phase == MatchPhase.Idle, "phase-0")
		
		gameMatch.StartMatch()
		Should( gameMatch.Phase == MatchPhase.Playing, "phase-1")
		Should( gameMatch.CurrentPlayer is playerA, "current player-0")
		
		gameMatch.NextPlayer()
		Should( gameMatch.CurrentPlayer is playerB, "current player-1")
		
		gameMatch.NextPlayer()
		Should( gameMatch.CurrentPlayer is playerA, "current player-2")
		
		gameMatch.NextPlayer()
		Should( gameMatch.CurrentPlayer is playerB, "current player-3")
		
		gameMatch.EndMatch()
		Should( gameMatch.Phase == MatchPhase.Idle, "phase-2")