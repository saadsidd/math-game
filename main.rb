require './Game'
require './Player'
require './Question'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')
game = Game.new([player1, player2])

i = 0
while !game.over
  question = Question.new
  puts "#{game.current_player.name}: What does #{question.prompt} equal?"
  print "> "
  guess = gets.chomp
  if guess.to_i == question.answer
    game.over = true
  end
  puts question.answer
  game.next_player


  i += 1
  game.over = true if i > 6
end

puts "----- GAME OVER -----"
puts "Good bye!"