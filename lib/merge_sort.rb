def merge_sort(array)

  if array.length < 2
    return array
  else
    middle = (array.length/2).floor - 1
    left_half = merge_sort(array[0..middle])
    right_half = merge_sort(array[middle+1..array.length - 1])
    return merge(left_half, right_half)
  end
end

def merge(left_half, right_half)
  merged = []
  left_index = 0
  right_index = 0
  while left_index < left_half.length && right_index < right_half.length
    if left_half[left_index] <= right_half[right_index]
      merged << left_half[left_index]
      left_index += 1
    else
      merged << right_half[right_index]
      right_index += 1
    end
  end
  merged.concat(left_half[left_index..-1])
  merged.concat(right_half[right_index..-1])
  return merged
end

unsorted_array = [5, 3, 11, 42, 58, 3, 22, 13]
sorted_array = merge_sort(unsorted_array)
puts sorted_array
