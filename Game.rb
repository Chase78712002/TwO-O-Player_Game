class Game
  attr_accessor :current_name,:game_on, :input, :current_player, :p1, :p2
 
  def initialize(p1, p2)
    @current_player = p1
    @current_name = @current_player.name
    @p1 = p1
    @p2 = p2
    @game_on = true
    @input = nil
    puts "Welcome to the game! "
  end

  def lives_announce(p1, p2)
    puts "#{@p1.name}: #{p1.lives_remain} vs #{@p2.name}: #{p2.lives_remain}"
  end

  def replay(response)
    # if response is yes, reset the game 
    if response == 'y'
      @p1.reset
      @p2.reset
      return true
    elsif response == 'n'
      return self.game_on = false
    else
      puts "Invalid input"
      return self.game_on = false
    end
  end

  def ask_question(question)
    puts "Question for #{@current_player.name}: \n   #{question}"
    @input = gets.chomp.to_i
    # p input
  end

  def prompt_answer(correct_answer)
    puts "Yes! #{@current_name} is correct" if correct_answer
    puts "You for real, #{@current_name}?! No!" if !correct_answer
  end

  def record_score(correct_answer)
    if !correct_answer
      @current_player.lose_1_life
    end
  end

  def prompt_new_turn
    puts "---------NEW TURN--------------"
    (@current_player.name == @p1.name) ? (@current_player = @p2) : (@current_player = @p1)
  end

  
  def check_winner(p1, p2)
    if p1.current_life == 0
      puts "#{p2.name} wins with a score of #{p2.lives_remain}"
      return true
    elsif p2.current_life == 0
      puts "#{p1.name} wins with a score of #{p1.lives_remain}"
      return true
    else
      return false
    end
  end
end