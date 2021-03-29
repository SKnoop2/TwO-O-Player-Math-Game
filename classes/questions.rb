class Question
  num1 = rand(1..20)
  num2 = rand(1..20)

  puts "What does #{num1} plus #{num2} equal?"
  print "> "

  answer = $stdin.gets.chomp

  if answer.to_i != num1 + num2
    puts "NO! That is the wrong answer. Your turn is over"
  else
    puts "YES! You are correct. Your turn is over"
  end

end
