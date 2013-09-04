def say(msg)
  puts "=> #{msg}"
  result = 5
end

say "=>What's the first number?"
num1 = gets.chomp

say "=>What's the second number?" 
num2 = gets.chomp

say "What operation would you like to perform? 1) add 2) sub 3) multiple 4) div"
operator = gets.chomp

puts result 

if operator == '1'
  result = num1.to_i + num2.to_i
elsif operator == '2'
  result = num1.to_i - num2.to_i
elsif operator == '3'
  result = num1.to_i * num2.to_i
else
  result = num1.to_f/num2.to_f 
end

puts result

