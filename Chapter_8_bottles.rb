def english_number number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  num_string = ''
  ones_place = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tens_place = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  # Hash containing special units and their corresponding labels.
  # Adding more labels only requires extending the hash (and line 40)
  units = {
    # Just showing off now
    10**100 => 'googol',
    
    1000000000000 => 'trillion',
    1000000000 => 'billion',
    1000000 => 'million',
    1000 => 'thousand',
    100 => 'hundred',
    10 => [teenagers, tens_place],
    1 => ones_place
  }
  
  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)
  
  left  = number

  # Iterating through the hash, changing the string to include the unit values and their corresponding labels
  units.each do |key,value|
    write = left/key
    left  = left - write*key
    if write > 0
      case key
      when 10**100, 1000000000000, 1000000000, 1000000, 1000, 100
        label  = english_number write
        ending = label + ' ' + value
        if left > 0
          if key == 100
            # Add 'and' after saying 'hundred' to mimic speech, or a comma to make the string legible
            ending += ' and '
          else
            ending += ', '
          end
        end
      when 10
        if ((write == 1) and (left > 0))
          # The teens
          ending = value[0][left-1]
          left = 0
        else
          ending = value[1][write-1]
        end
        
        if left > 0
            ending += '-'
        end
      when 1
        ending = value[write-1]
      end
      num_string += ending
    end
  end

  # Now we just print the string, with a nice capital letter at the beginning
  num_string
end

# Bottles
bottles = 9999
while bottles >= 0
  bottles == 1? plural = "" : plural = "s"
  num_left = bottles-1

  puts english_number(bottles).capitalize + " bottle#{plural} of beer on the wall, " + english_number(bottles) + " bottle#{plural} of beer."

  unless bottles == 0
    num_left == 1? plural = "" : plural = "s"
    puts "Take one down and pass it around, " + english_number(num_left) + " bottle#{plural} of beer on the wall."
  else
    puts "Go to the store and buy some more, ninety-nine bottles of beer on the wall."
  end
  
  bottles -= 1
end