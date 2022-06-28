class Question
  attr_reader :num_1, :num_2, :answer 

  def initialize
    @num_1 = rand(1..20)
    @num_2 = rand(1..20)
    @answer = @num_1 + @num_2
  end

  def ask_question(player)
    puts "#{player}: What does #{num_1} plus #{num_2} equal?"
  end

  def correct?(answer)
    answer == @answer ? true : false
  end

end
