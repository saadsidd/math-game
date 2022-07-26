class Game
  def initialize(players)
    @players = players
    @player_index = 1
    @current_player = @players[1]
    @other_player = @players[0]
    @over = false
  end

  def player_change
    @other_player = @players[@player_index]
    @player_index = (@player_index == 0) ? 1 : 0
    @current_player = @players[@player_index]
  end

  def scoreboard
    puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
  end

  attr_reader :current_player, :other_player
  attr_accessor :over
end