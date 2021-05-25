require "./Game.rb"
require "./Player.rb"
require "./Question.rb"


p1 = Player.new("Igudala")
p2 = Player.new("James")
game = Game.new(p1, p2)


i = 0
while game.game_on
  # ask question
  question = Question.new
  # prompt input
  game.ask_question(question.get_question)
  input = game.input
  a = question.num_a
  b = question.num_b
  sign_str = question.sign
  # evaluate input
  correct_answer = question.evaluate(input, a, b, sign_str)
  # prompt answer
  game.prompt_answer(correct_answer)
  # record score
  game.record_score(correct_answer)
  # display scores 
  game.lives_announce(p1, p2)

  # check winner
  winner = game.check_winner(p1, p2)
  if winner
    # when winner, prompt winner
    puts "Do you wanna play again?"
    response = gets.chomp
    # end game/ replay
    game.replay(response)

    puts "------Game Over-------"
    puts "Thank you for playing! Good Bye!"
  else
    game.prompt_new_turn
  end


  # prompt new turn
  # repeat
  
end


