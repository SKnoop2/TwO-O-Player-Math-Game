
require "./classes/questions"
require "./classes/players"

class Game
  attr_accessor :current_player, :player1, :player2, :question, :guess
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @question = Question.new
    @current_player = @player1
    @other_player = @player2
  end

  def ask_question
    puts "#{@current_player.name}: #{@question.show}"
  end

  def player_guess
    print "> "
    @guess = $stdin.gets.chomp
  end

  def switch_players
    if @current_player.name == @player1.name
      @current_player = @player2
      @other_player = @player1
    else 
      @current_player = @player1
      @other_player = @player2
    end
    return
  end

  def check_answer
    if guess.to_i != question.num1 + question.num2
      puts "NO! That is the wrong answer"
      @current_player.lives -= 1
      if @current_player.lives == 0
        
        puts "#{@other_player.name} wins with a score of #{@other_player.lives}!"
        puts "----- GAME OVER -----"
        puts "Good bye!"
        exit(0)
      else
        puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
        puts "----- NEW TURN -----"
      end
    else
      puts "YES! You are correct"
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      puts "----- NEW TURN -----"
    end
  end
  
  # game starts
  def start
    while self.current_player.lives > 0 do
      self.ask_question
      self.player_guess
      self.check_answer
      self.switch_players
    end
  end

end

gameOne = Game.new
puts gameOne.start