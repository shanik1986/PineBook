#Chapter 13, p. 112: Make an orange tree class as specified

class OrangeTree
  def initialize(name)
    @name = name
    @age = 0
    @oranges = 0
    @height = rand(0.1..0.5).round(2)
    puts "We have a baby tree - #{@name}. It's #{@height} Meters tall"
  end

  def height
    puts "#{@name} is #{@height} Meters high"
  end

  def year_pass(period = 1)
    @age += period
    if @age >= rand(30..40)
      puts "#{period} more year pass, and good old #{@name} leaves us. :( - Yep, it's dead..."
      exit
    end

    @height += (rand(0.1..0.5) * period).round(2)

    if @age <= 3
      @oranges = 0
    elsif @age <= 10
      @oranges = rand(10..20)
    elsif @age <= 20
      @oranges = rand(15..40)
    elsif @age <= 40
      @oranges = rand(30..100)
    end

    puts "#{period} years passes, and our #{@name} is now #{@age} year old"

  end

  def pick_an_orange(num = 1)
    if num > @oranges
      puts "There aren't #{num} oranges on #{@name}. You can have all #{@oranges} of them"
      @oranges = 0
    else
      @oranges -= num
      puts "You pick #{num} oranges. #{@name} has #{@oranges} oranges left"
    end

  end

  def count_oranges
    puts "#{@name} has #{@oranges} oranges on its branches"
  end

end


tree = OrangeTree.new("Herbert")
tree.height
tree.count_oranges

tree.year_pass(2)
tree.height
tree.count_oranges

tree.year_pass(5)
tree.height
tree.count_oranges

tree.year_pass(3)
tree.height
tree.count_oranges

tree.year_pass(4)
tree.height
tree.count_oranges

tree.year_pass(4)
tree.height
tree.count_oranges
tree.pick_an_orange(70)
