
def merge_sort(arr)
  return arr if arr.length < 2  # base case
  left = merge_sort(arr[0...arr.length/2])  # recursion starts here, splitting the array 
  right = merge_sort(arr[arr.length/2..-1]) # over and over until it is only lenght of one.

  result = []
  # loop that merges the left and right sides of array
  while left.length > 0 && right.length > 0
    if left.first < right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  # puts together the result by taking result from the loop and adding 
  # anything left over from the left or right arrays.
  result + left + right
end

arr = [9, 4, 1, 7, 8, 2, 3, 5, 6, 11, 4, 1, 9]
p merge_sort(arr)
