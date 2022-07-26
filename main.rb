require './Game'
require './Player'
require './Question'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')
game = Game.new([player1, player2])

while !game.over
  
  question = Question.new
  player = game.current_player
  opponent = game.other_player

  puts "#{opponent.name}: What does #{question.prompt} equal?"
  print "> "
  guess = gets.chomp.to_i
  
  if guess != question.answer
    puts "#{opponent.name}: Seriously? No!"
    player.lose_life
  else
    puts "#{opponent.name}: YES! You are correct."
  end

  game.scoreboard

  if player.lives == 0
    puts "#{opponent.name} wins with a score of #{opponent.lives}/3"
    game.over = true
  else
    puts "----- NEW TURN -----"
    game.player_change
  end

end

puts "----- GAME OVER -----"
puts "Good bye!"