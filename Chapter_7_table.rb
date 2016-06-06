table = [['Chapter 1: Numbers', 'page 1'], ['Chapter 2: Letters', 'page 72'], ['Chapter 3: Variables', 'page 118']]

line_width = 60
puts 'Table of Contents'.center(line_width)
puts
table.each do |chapter|
	puts chapter[0].ljust(line_width/2) + chapter[1].rjust(line_width/2)
end