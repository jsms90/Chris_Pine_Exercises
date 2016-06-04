puts "OH YOU'VE GROWN SO TALL!"
input = gets.chomp
while input != "BYE".chomp
		if input == input.upcase
			puts "NO, NOT SINCE #{1930+rand(20)}!"
		else
			puts "HUH?! SPEAK UP, SONNY!"
		end
		input = gets.chomp
end
puts "BYE SONNY! COME BACK AND VISIT YOUR OLD GRANNY SOON, YOU HEAR?"