def chimer(&block)
  hours = Time.new.hour - 12
  hours.times do
    block.call
  end
end

chimer do
  puts 'This is a test'
end
