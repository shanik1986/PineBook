#Chapter 11: p.92: Create a playlist out of a list of songs with their pathnames

#The Shuffle method from chapter 10
def shuffle(arr)
  recursive_shuffle(arr, [])
end

def recursive_shuffle(arr, shuffled_array)
  #Take a random card each time and push it to the shuffled array. After that, remove from the first array until it is empty

  if arr.length >= 1 #If we still have items in the original array: Keep shuffling

    shuffled_array.push(arr.delete_at(rand(0...(arr.length))))
    recursive_shuffle(arr, shuffled_array)

  else #If we have no more items in the original array the deck is shuffled and we return the shuffled array
    shuffled_array
  end
end

Dir.chdir 'c:\users\scn\desktop\pictures'

puts 'What\'s the name of the playlist?'
filename = gets.chomp + '.m3u'

pathnames = shuffle(Dir['e:/music/**/*.mp3'])

File.open filename, 'w' do |f|
  pathnames.each do |file|
    f.write file+"\n"
  end
end

puts "Done! #{pathnames.length} files in the playlist"
