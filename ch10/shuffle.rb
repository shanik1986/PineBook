#Ch.10, p. 75: The program needs to completely shuffle an array.
# The definition of shuffled in this program is picking a random card and putting it in the of the array

def shuffle(arr)
  recursive_shuffle(arr, [])
end

def recursive_shuffle(arr, shuffled_array)
  #Take a random card each time and push it to the shuffled array. After that, remove from the first array until it is empty

  if arr.length >= 1 #If we still have items in the original array: Keep shuffling

    shuffled_array.push(arr.delete_at(rand(0...(arr.length))))
    recursive_shuffle(arr, shuffled_array)

  else #If we have no more items in the original array the deck is shuffled and we return the shuffled array
    shuffled_array
  end
end

array = [
          "cat", "cat", "dog", "bell", "check", "test", "man",
          "bag", "pants", "shirt", "Apple", "phone", "chair"
        ]

p array
puts
p shuffle(array)
