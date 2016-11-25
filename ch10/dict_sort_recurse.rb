#Ch.10: p. 75 - A method that sorts an array without using the sort method, and keeps the same display as would a dictionary

def dict_sort(arr)
  return arr if arr.length <= 1
  middle = arr.pop
  less = arr.select {|item| item.downcase < middle.downcase}
  more = arr.select {|item| item.downcase >= middle.downcase}
  dict_sort(less) + [middle] + dict_sort(more)
end

dictionary = [
              "Cat", "cat", "dog", "bell", "check", "test",
              "bag", "Pants", "shirt", "Apple", "box"
             ]

p dictionary

puts

p dict_sort(dictionary)
