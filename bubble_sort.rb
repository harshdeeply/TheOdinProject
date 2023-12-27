def bubble_sort(unsorted_array)
  for i in 0...unsorted_array.size do
    swapped = false
    for j in 0...unsorted_array.size - i - 1 do
      next unless unsorted_array[j] > unsorted_array[j + 1]

      tmp = unsorted_array[j]
      unsorted_array[j] = unsorted_array[j + 1]
      unsorted_array[j + 1] = tmp
      swapped = true
    end
    break unless swapped
  end
end

arr = [4, 2, 1, 5, 77, 6, 7]
bubble_sort(arr)
print(arr)
