class Question
  attr_accessor :num_a, :num_b, :sign

  def initialize
    @num_a = nil
    @num_b = nil
    @sign = nil
  end

  def get_question
    # generate 2 random num
    @num_a = rand(1..20)
    @num_b = rand(1..20)

    sign_num = rand(1..4)
    
    case sign_num
    when 1
      @sign = "plus"
    when 2
      @sign = "minus"
    when 3
      @sign = "multiplied by"
    when 4
      @sign = "divided by"
    end
    # put them into string template
    question = "What does #{@num_a} #{@sign} #{@num_b} equal?"

    return question
  end

  def evaluate(input, a, b, sign_str)
    answer_key = nil
    case sign_str
    when "plus"
      answer_key = a + b
    when "minus" 
      answer_key = a - b
    when "multiplied by"
      answer_key = a * b
    when "divided by"
      answer_key = a / b
    end

    (answer_key == input) ? (true) : (false)
    
  end





end