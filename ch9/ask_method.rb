#Ch.9: Make an improved ask method (p.68)

def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase
    return true if reply == 'yes'
    return false if reply == 'no'
    puts 'Please answer with a \'yes\' or a \'no\''
  end
end

puts ask ("How you doing?")
