#Ch.7, p.49: The program prints the lyrics of the song

bottles = 99
while bottles > 1
  puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer"
  puts "Take one down, pass it around, #{bottles - 1} bottles of beer on the wall"
  bottles -= 1
end
  puts "1 bottle of beer on the wall, 1 bottle of beer"
  puts "Take one down, pass it around, no more bottles of beer on the wall"
