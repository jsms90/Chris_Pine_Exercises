puts "OH YOU'VE GROWN SO TALL!"
bye = 0
while bye < 3
	input = gets.chomp
	if input == "BYE".chomp
		bye += 1
		case bye
		when 1
			puts "DIDN'T CATCH THAT. WHAT WERE YOU TRYING TO SAY?"
		when 2
			puts "QUIT YOUR MUMBLING!"
		end
	elsif input == input.upcase
		bye = 0
		puts "NO, NOT SINCE #{1930+rand(20)}!"
	else
		bye = 0
		puts "HUH?! SPEAK UP, SONNY!"
	end
end
puts "OH ALRIGHT ALRIGHT. BUT YOU COME BACK AND VISIT YOUR OLD GRANNY SOON, YOU HEAR?"