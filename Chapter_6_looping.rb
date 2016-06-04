command = nil

# Could enter a line: print "Hello?" if we wanted to prompt the user to start by saying something.

while command != 'bye'
  puts command
  command = gets.chomp
end

puts 'Come again soon!'