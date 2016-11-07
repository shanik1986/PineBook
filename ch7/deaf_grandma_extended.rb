#Ch.7, p.49: In the extended exercises even when the kid says BYE, the grandma pretends not ot hear. Only the 3rd
#consequtive time exits the loop

puts "HEY THERE SONNY! HOW CAN DEAR OLD GRANDMA HELP YOU TODAY?"
bye_count = 0

while true
  says = gets.chomp
  if says == "BYE"
    bye_count += 1
  else
    bye_count = 0
  end
  if (bye_count) >= 3 then break end
  if (says.upcase == says) && (says != 'BYE')
    response = "NO, NOT SINCE #{rand(1930..1950)}"
  else
    response = "HUH?! SPEAK UP, SONNY!"
  end
  puts response
end
puts "BYE SONNY!!"
