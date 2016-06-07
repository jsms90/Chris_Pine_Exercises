one_billion_seconds_old = Time.mktime(1990, 2, 19, 4, 50, 27) + 1_000_000_000
puts one_billion_seconds_old
puts
puts "Which year were you born in?"
year = gets.chomp
puts "Which month were you born in?"
month = gets.chomp
puts "Which day were you born on?"
day = gets.chomp
your_bday = Time.mktime(year, month, day)
years_since_birth = ((Time.now - your_bday).to_i)/60/60/24/365
years_since_birth.times {puts "SPANK!"}