puts 'What is your first name?'
first_name = gets.chomp

puts 'What is your last name?'
last_name = gets.chomp

puts 'Did you know there are ' + (first_name.length + last_name.length).to_s + ' letters in your name, ' + first_name + ' ' + last_name + "?"



puts 'What do you want to say to your boss?'
text = gets.chomp
puts 'WHADDAYA MEAN "' + text.upcase.to_s + '"?!?  YOU\'RE FIRED!!'

lineWidth = 60
puts 'Table of Contents'.center(lineWidth)
puts ''
puts 'Chapter 1: Numbers'.ljust(lineWidth/2) + 'page 1'.rjust(lineWidth/2)
puts 'Chapter 2: Letters'.ljust(lineWidth/2) + 'page 72'.rjust(lineWidth/2)
puts 'Chapter 3: Variables'.ljust(lineWidth/2) + 'page 118'.rjust(lineWidth/2)