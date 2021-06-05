def proper_factors(number) 

    (1...number).select do |factor|           
        if (number > 0) && (number % factor == 0)    
            factor
        end
    end

end

def aliquot_sum(num)

    proper_factors(num).sum 

end

def perfect_number?(num)

    if num == aliquot_sum(num)
        return true
    else
        return false
    end

end

p perfect_number?(2)