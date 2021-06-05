#should return all positive numbers 
#that also divide into the number
def proper_factors(number) 

    (1...number).select do |factor|           
        if (number > 0) && (number % factor == 0)    
            factor
        end
    end

end

#return the sum of all proper factors of the num 
#use last method as a helper method and .sum it 
def aliquot_sum(num)

    proper_factors(num).sum 

end

#return true when number is equal to aliquot sum 
#return false if not equal 

def perfect_number?(num)

    if num == aliquot_sum(num)
        return true
    else
        return false
    end

end


#return an arr
#containing the first n perfect number 
def ideal_numbers(n)
  nums = []                 #new arr where the numbers will be stored 

  i = 1                     #starting point is at 1
  while nums.length < n         #while the length of the arr is greater than the n
    nums << i if perfect_number?(i)         #shovel in the number if it's a perfect number 
    i += 1
  end

  nums
end

