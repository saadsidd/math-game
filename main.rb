require './Game'
require './Player'
require './Question'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')
game = Game.new([player1, player2])

#while !game.over
# end