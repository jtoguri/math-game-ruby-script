class Player
  @@max_lives = 3

  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end
  
  def take_life
    @lives -= 1
  end

  def score
    "#{@lives}/#{@@max_lives}"
  end
  
  def dead?
    @lives == 0
  end

  def self.max_lives
    @@max_lives
  end

end
