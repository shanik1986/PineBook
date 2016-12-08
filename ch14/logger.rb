$nesting_depth = 0

def log(description, &block)
  prefix = "  "*$nesting_depth
  puts "#{prefix}Now starting the block: \"#{description} \"..."
  $nesting_depth += 1
  returned = block.call
  $nesting_depth -= 1
  puts "#{prefix}... \"#{description}\" just finished running and returned:\n#{prefix}#{returned}"

end

log('calculating numbers') do
  num = 2
  log('singing the ABC') do
    'abcdefghijklmnopqrstuvwxyz'
  end
  5.times do
    num *= 2
  end
end
