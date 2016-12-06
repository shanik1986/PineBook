#Create a Die class that can roll, show the number and cheat

class Die

  def initialize
    roll
  end

  def roll
    @current_num = 1 + rand(6)
  end

  def show_num
    @current_num
  end

  def cheat(num)
    if (num <= 6) && (num >= 1)
      @current_num = num
    else
      puts "Error! The number on a die must be between 1 and 6 - you picked #{num}"
    end
  end
end

die = Die.new

puts "The die is showing #{die.show_num}"

puts die.roll

puts "This time die is showing #{die.show_num}"

puts die.cheat(4)

puts die.cheat(7)
