words = []
puts "Enter as many words as you like (one per line). Press enter on an empty line when you're done"
input = gets.chomp
while input != ""
	words.push input
	input = gets.chomp
end
puts words.sort