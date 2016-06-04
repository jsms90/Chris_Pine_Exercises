bottles = 99
while bottles >= 0
	bottles == 1? plural = "" : plural = "s"
	bottles <= 1? num_left = "no more" : num_left = (bottles-1).to_s
	bottles == 0? num = "no more" : num = bottles.to_s

	puts num.capitalize + " bottle#{plural} of beer on the wall, " + num + " bottle#{plural} of beer."

	unless bottles == 0
		num_left == 0? plural = "" : plural = "s"
		puts "Take one down and pass it around, " + num_left + " bottle#{plural} of beer on the wall."
	else
		puts "Go to the store and buy some more, 99 bottles of beer on the wall."
	end
	
	bottles -= 1
end