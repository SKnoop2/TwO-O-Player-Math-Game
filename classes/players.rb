class Player
  attr_accessor :score

  def initialize(name)
    @name = name
  end
  
  def lives
    @lives = 3
  end

end

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
