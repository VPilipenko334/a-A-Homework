# Write a method, is_sorted(arr), that accepts an array of numbers as an arg.
# The method should return true if the elements are in increasing order, false otherwise.
# Do not use the built-in Array#sort in your solution :)

#return true if ele is increasing / if not false 
#iterate through the array.. what are your paramters? (0...array.length-1) because you want to stay in the bounds
def is_sorted(arr)
   sorted = false

    (0...arr.length - 1).each do |i|
        if arr[i] > arr[i+1]            #if our first ele is greater than our second ele, we swap them 
        arr[i], arr[i+1] = arr[i+1], arr[i]
             if !sorted 
                return false
             end
        end    
    end
    
  return true

end


p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4 ])         # => false
