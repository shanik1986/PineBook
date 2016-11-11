#Ch.7 - Receive beginning year and ending year from the user and print al the leao years (years divisible by 4 and 400, but
# not divisible by 100)

puts "What year would you like us to start?"
start_year = gets.chomp.to_i
puts "What year would you like to finish?"
end_year = gets.chomp.to_i

=begin
for i in (start_year..end_year) do
  puts i if (((i % 4 == 0) && (i % 100 != 0)) || i % 400 == 0)
end
=end

#Another option:
(start_year..end_year).each do |n|
  next if n % 4 != 0
  next if n % 100 == 0
  puts n
end
