class Game
  def initialize(players)
    @players = players
    @player_index = 0
    @current_player = @players[@player_index]
    @over = false
  end

  def next_player
    @player_index = (@player_index == 0) ? 1 : 0
    @current_player = @players[@player_index]
  end

  attr_reader :current_player
  attr_accessor :over
end