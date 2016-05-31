puts "What's your first name?"
first_name = gets.chomp

puts "What's your last name?"
last_name = gets.chomp

puts "Hi there, #{first_name} #{last_name}"


puts "What's your favourite number?"
num = gets.chomp.to_i + 1
puts "Are you sure? #{num} is bigger and better... isn't #{num} your favourite?"