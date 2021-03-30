


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
    @question = Question.new
  end

  def ask_question
    puts "#{@current_player.name}: #{@question.show}"
  end

  def player_guess
    print "> "
    @guess = $stdin.gets.chomp
  end

  def check_answer
    if guess.to_i != question.num1 + question.num2
      puts "NO! That is the wrong answer. Your turn is over"
    else
      puts "YES! You are correct. Your turn is over"
    end
  end

  # game starts
  def start
    self.ask_question
    self.player_guess
    self.check_answer
  end

end

gameOne = Game.new
puts gameOne.start