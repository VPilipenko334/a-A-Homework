# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.

# returns an arr containing all the peaks of the arr
# peak if it's greater than both it's right and left neighbor 
# arr[0] & arr[-1] are peak if it's greater than neighbor 


#iterate through the arr -> (0...arr.length - 1) *INCLUDING ARR.LENGTH & -1 to not step out of bounds
#write a conditional finding a peak 

def peak_finder(arr)

    (0..arr.length - 1).select do |i|
        if arr[i] > arr[i+1] && arr[i+1] >
            arr[i]


end

p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
p peak_finder([1, 3])               # => [3]
p peak_finder([3, 1])               # => [3]