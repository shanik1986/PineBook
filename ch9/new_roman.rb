#Ch.9 (p.68): The program translates a number to new roman numerals - what we know as regular roman digits

def new_roman_num (num)
  i = 0
  roman = ''
  spec_digits = [
                  {four: 'IV', nine: 'IX'},
                  {four: 'XL', nine: 'XC'},
                  {four: 'CD', nine: 'CM'},
                ]
  reg_digits =  [
                  {small:   'I', big:  'V'   },
                  {small:   'X', big:  'L'   },
                  {small:   'C', big:  'D'   },
                  {small:   'M', big:  ''    }
                ]
  while true
    digit = num % 10
    if digit == 4
      roman = spec_digits[i][:four] + roman
    elsif digit == 9
      roman = spec_digits[i][:nine] + roman
    else
      big   = (num % 10) / 5 # This is going to be 0 or 1 - depending on if there's a 5 in the digit.
      big == 0 ? small = (num % 10) : small = (num % 10) - 5 #If there is a 5, I need to substract it to know how many 'ones' there are
      roman = (reg_digits[i][:big] * big) + (reg_digits[i][:small] * small) + roman
    end
    num /= 10
    i += 1
    return roman if num == 0
  end
end

puts "Please enter number between 1 and 3,000"
user_num = gets.chomp.to_i
puts "#{user_num} in old Roman Numerals would be #{new_roman_num(user_num)}"
