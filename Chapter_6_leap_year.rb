puts "Starting year?"
starting_year = gets.chomp.to_i
puts "Ending year?"
ending_year = gets.chomp.to_i
count = 0
for i in (starting_year..ending_year)
	if (i % 4 == 0 && i % 100 != 0) || (i % 400 == 0)
		puts i
		count += 1
	end
end

# My own amusement
puts "There are #{count} leap years between #{starting_year} and #{ending_year}"