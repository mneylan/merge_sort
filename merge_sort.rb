#sorting an array using recursion


def merge_sort(arr)
return arr if arr.length < 2

pivot = arr[0]
left = arr.drop(1).select {|ele| ele < pivot}
#[1]
right = arr.drop(1).select {|ele| ele >= pivot}
#[8, 5]
sorted_left = merge_sort(left)
sorted_right = merge_sort(right)

return sorted_left + [pivot] + sorted_right

end

p merge_sort([5, 1, 8, 5]) # => [1, 8, 5]
