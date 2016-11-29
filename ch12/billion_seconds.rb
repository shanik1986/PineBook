#Ch.12: Ex1, p. 97 - When will I be 1B seconds old?

my_date = Time.local(1986, 02, 23, 13, 00)
puts "I was born in #{my_date}"

billion_birthsec = my_date + 1000000000

puts "I will be a billion seconds old on #{billion_birthsec}"
