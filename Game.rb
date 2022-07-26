class Game
  def initialize(players)
    @players = players
    @current_player = players[0]
    @over = false
  end

  attr_reader :over
end