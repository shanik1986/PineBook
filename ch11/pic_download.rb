#This program moves all the pictures from a certain directory to a different one, with different names.

Dir.chdir 'c:\Users\scn\Desktop\Pictures\New Pictures'
pic_names = Dir['../*.jpg']

puts 'What\'s the name of this batch?'
batch_name = gets.chomp
pic_number = 1

pic_names.each do |name|
  print '.' #This is the progress bar

  #Pick a new name for each file
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  #Make sure no such file exists in the new directory - If so ERROR AND EXIT!
  if File.exist?(new_name)
    puts "Error!! A file named '#{new_name}' already exists!. Aborting..."
    exit
  end

  #Move all the from this folder to the new one with their new names
  File.rename(name, new_name)

  pic_number += 1
end

puts
