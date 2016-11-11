#Ch8: The program asks for words from the user, and when he puts in 'ENTER' instead of a word, it prints out all the words
#he entered sorted

array = []
i = 0

puts "So, what words are interesting for you? Enter at least two words and we'll sort them by the ABC"
while true
  item = gets.chomp.downcase
  next if item.empty? && array.length < 2
  break if item.empty?
  puts "The item #{item} is now part of the array"
  array.push(item)
end
array.sort!.each_with_index {|item, index| puts "The item in index #{index} is #{item}"}
