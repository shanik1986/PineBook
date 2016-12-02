#Ch.12, Ex.2, p. 97: Ask a person for his birthday and puts SPANK for every birthday he had

sec_in_year = 365 * 24 * 60 *60

puts "What year were you born?"
year = gets.chomp.to_i

puts "And what Month?"
month = gets.chomp.to_i

puts "What about the day?"
day = gets.chomp.to_i

birthday = Time.local(year, month, day)
puts "OK, you were born on #{birthday}, right?"

spanks = ((Time.new - birthday) / sec_in_year)

puts "So, if my calculations are correct, that means you are #{spanks} old, right? Let's give you a SPANK for each year!"
spanks.to_i.times do
  puts "SPANK"
end
