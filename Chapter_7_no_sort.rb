words = []
new_words = []
puts "Enter as many words as you like (one per line). Press enter on an empty line when you're done"
input = gets.chomp
while input != ""
	if words.empty?
		words.push input
	else
		while input.downcase < words.last.downcase
			new_words.push words.last
			words.pop
			if words.empty?
				break
			end
		end
		words.push input
		until new_words == []
			words.push new_words.last
			new_words.pop
		end
	end
	input = gets.chomp
end
puts words