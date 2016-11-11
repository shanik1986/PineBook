#Ch.9 (p.68): The program translates a number to old roman numerals. In the old roman, there is no
#substraction form, meaning IIII = 4 and not IV.

def old_roman_num(num)

#Below is my answer and it's kind of bad compared to his. After that I'll put his answer
  digits = [
            {ones: 'I', fives: 'V'},
            {ones: 'X', fives: 'L'},
            {ones: 'C', fives: 'D'},
            {ones: 'M', fives: 'N\A'}
           ]
  answer = ''
  i = 0
  while true
    last = num % 10
    if last >= 5
      ones = last - 5
      fives = 1
    else
      ones = last
      fives = 0
    end
    answer = (digits[i][:fives] * fives) + (digits[i][:ones] * ones) + answer
    return answer if num / 10 == 0
    num /= 10
    i += 1
  end
end

=begin
#That's his solution.... You can notice it's a bit shorten. Like half.
def old_roman_num (num)
  roman << 'M' * (num        / 1000)
  roman << 'D' * (num % 1000 /  500)
  roman << 'C' * (num % 500  /  100)
  roman << 'L' * (num % 100  /   50)
  roman << 'X' * (num % 50   /   10)
  roman << 'V' * (num % 10   /    5)
  roman << 'I' * (num % 5    /    1)
end
=end

puts "Please enter number between 1 and 3,000"
user_num = gets.chomp.to_i
puts "#{user_num} in old Roman Numerals would be #{old_roman_num(user_num)}"
