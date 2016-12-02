#Chapter12, p.101 - Read birthdays from a file to a hash, and tells the user when the next birthday for someone is

def check_birthday(birthdays, name)
  if !birthdays[name]
    puts "Sorry, no such name"
    return
  end

  #Calculate and print how old he will be
  today = Time.new
  next_birthday = Time.local(today.year, birthdays[name].month, birthdays[name].day)
  next_birthday = Time.local(next_birthday.year + 1, next_birthday.month, next_birthday.day) if next_birthday < today

  age = ((next_birthday - birthdays[name]) / 60 / 60 / 24 / 365).to_i

  puts "His birthday is on #{birthdays[name].day}/#{birthdays[name].month} and he's going to be #{age} years old"

end

birthdays = {}

#Mova all the dates from the file to a hash
File.open('birthdays.txt').each do |line|
  i = line.index("\t")
  birthdays[line[0...(i - 1)]] = line[(i + 1)..(line.length - 1)].chomp
end

#Change all values to Time objects
birthdays.each do |key, value|
  year = value[-4..-1].to_i
  month = value[0..2]
  day = value[4..5].to_i
  birthdays[key] = Time.local(year, month, day)
end

puts "Who's birthday are you interested in?"
name = gets.chomp

check_birthday(birthdays, name)
