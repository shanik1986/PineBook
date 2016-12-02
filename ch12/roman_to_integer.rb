#Chapter12: p.101 - The program translates roman digits to integers (Max num = 3000 or 'MMM')
=begin
#This is my solution. Below it I can find Pine's solution...

def rom_to_int(str, i = 0, sum = 0)

  return sum if i >= str.length

  #Verify the number is a roman number

  char = {
             'I' => 1,   'IV' => 4,   'V' => 5,   'IX' => 9,
             'X' => 10,  'XL' => 40,  'L' => 50,  'XC' => 90,
             'C' => 100, 'CD' => 400, 'D' => 500, 'CM' => 900,
             'M' => 1000
           }

  str.length > 1 ? batch = str[i..i + 1] : batch = str

  if char.key?(batch)
    i += 2
  elsif char.key?(batch[0])
    batch = batch[0]
    i += 1
  else #str contains a character which is not a roman numeral - exiting program
    puts "Error! The character #{batch[0]} is not a Roman numeral!"
    exit
  end

  sum += char[batch]

  rom_to_int(str, i, sum)

end
=end

def rom_to_int(str)

  values = {
              'I' =>  1,   'V' => 5,
              'X' =>  10,  'L' => 50,
              'C' =>  100, 'D' => 500,
              'M' =>  1000
            }

  index = str.length - 1
  sum = 0
  prev_char = 0

  while index >= 0
    val = values[str[index]]
    puts "The current character is #{str[index]}"

    if !val
      puts "This is not a roman character"
      return
    end

    if val < prev_char
      val = -val
    else
      prev_char = val
    end

    puts "The value of the current character is #{val}"
    sum += val
    index -= 1

  end

  return sum

end

puts "Please enter a roman number:"
num = gets.chomp

puts "The number you entered as an Integer is #{rom_to_int(num.upcase)}"
