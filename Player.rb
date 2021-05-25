class Player
  attr_accessor :name
  attr_reader :current_life
  LIVES = 3

  def initialize(name)
    @name = name
    @current_life = 3
  end

  def lives_remain
    return "#{@current_life}/#{LIVES}"
  end

  def lose_1_life
    @current_life -= 1
  end

  def reset
    @current_life = 3
  end

end