#Ch.10: p. 74 - A method that sorts an array without using the sort method.

=begin
def sort(some_array)
  recursive_sort(some_array, [])
end
def recursive_sort(unsorted_array, sorted_array)
  smallest_word = unsorted_array.first
  smallest_i = 0
  unsorted_array.each_with_index do |word, i|
    if word < smallest_word
      smallest_word = word
      smallest_i = i
    end
  end
  sorted_array.push (unsorted_array.delete_at(smallest_i))
  if unsorted_array.empty?
    return sorted_array
  else
    recursive_sort(unsorted_array, sorted_array)
  end
end
=end

#==================
# His Solution
#==================

def sort (arr)
  return arr if arr.length <= 1
  middle = arr.pop
  less = arr.select {|item| item < middle}
  more = arr.select {|item| item >= middle}
  sort(less) + [middle] + sort(more)
end

array = [
          "cat", "cat", "dog", "bell", "check", "test",
          "bag", "pants", "shirt", "Apple"
        ]

array.map! {|item| item.downcase}

p sort(array)
