=begin
Rock Paper Scissors game 
The strategy is R>S, S>P and P>R
=end

require 'pp'

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
	# fetch the strategy from the list of players
	p1 = game[0][1].downcase
	p2 = game[1][1].downcase
	raise WrongNumberOfPlayersError unless game.length == 2
	raise NoSuchStrategyError unless p1 =~ /r|p|s/ 
	raise NoSuchStrategyError unless p2 =~ /r|p|s/
	if (p1=="r" and p2=="s") or (p1=="s" and p2=="p") or (p1=="p" and p2=="r") or
			(p1=="r" and p2=="r" and p1=="s" and p2=="s" and p1=="p" and p2=="p") 
		winner = game[0];
	else
		winner = game[1];
	end
	
end

def rps_tournament_winner(tournament)
if tournament[0][0].is_a?String
	rps_game_winner (tournament)
else
# use recursion to find the winner from each game
	rps_tournament_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
end

end


# test case
rps_game_winner([ [ "Kristen", "r" ], [ "Pam", "s" ] ])

players = 
[
[
  [ ["Kristen", "P"], ["Dave", "S"] ],
  [ ["Richard", "R"], ["Michael", "S"] ],
],
[
  [ ["Allen", "S"], ["Omer", "P"] ],
  [ ["David E.", "R"], ["Richard X.", "P"] ]
]
] 

pp rps_tournament_winner(players)




