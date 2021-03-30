


# Define a main.rb file that will require all the other files
# Use gets.chomp to get input from users and puts for output
# Isolate your Input/Output logic to one or two classes. Don't allow all your classes to interact (gets/puts) with the User
# Use puts, raise some_val.inspect, and byebug to help with debugging

require "./classes/questions"
require "./classes/players"

class Game
  attr_accessor :current_player, :player1, :player2, :question, :guess
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
    @other_player = @player2
    @question = Question.new
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
      # puts @current_player.name
    else 
      @current_player = @player1
      @other_player = @player2
      # puts @current_player.name
    end
    return
  end

  def check_answer
    if guess.to_i != question.num1 + question.num2
      puts "NO! That is the wrong answer"
      @current_player.lives -= 1
      if @current_player.lives == 0
        
        puts "#{other_player.name} wins with a score of #{other_player.lives}!"
        puts "----- GAME OVER -----"
      else
        puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      end
    else
      puts "YES! You are correct"
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    end
  end

  # game starts
  def start
    self.ask_question
    self.player_guess
    self.check_answer
    self.switch_players
  end

end

gameOne = Game.new
puts gameOne.start