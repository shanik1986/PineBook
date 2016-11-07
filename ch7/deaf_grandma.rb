#Ch.7, p.49: Th deaf grandma can't hear anything unless I shout it (use capslock)

puts "HEY THERE SONNY! HOW CAN DEAR OLD GRANDMA HELP YOU TODAY?"

while true
  request = gets.chomp
  if request == 'BYE'
    puts "BYE SONNY!! DON'T FOGET YOUR GRANDMA"
    break
  end
  if request.upcase == request
    response = "NO, NOT SINCE #{rand(1930..1950)}"
  else
    response = "HUH?! SPEAK UP, SONNY!"
  end
  puts response
end
