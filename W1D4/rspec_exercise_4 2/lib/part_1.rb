#should return a new arr that result in false when passed into proc.call
def my_reject(arr, &prc)

    arr.select do |ele|
        if prc.call(ele) == false
            ele
        end
    end
end

#return true when ONE ele is true prc.call(ele)
#return false when not exactly one ele 
#should not use .one?
def my_one?(arr, &prc)

    arr.count(&prc) == 1
      
end


#return a new hash containing key value pairs == true when passed into the prc
#should not use .select

#iterate through the hash 
#check if prc.call is true 
# if it's true for both the key and the value, pop it into the new hash 

def hash_select(hash, &prc)
    new_hash = Hash.new

    hash.each do |key, value|
        if prc.call(key, value)     
            new_hash[key] = value
        end
    end

    new_hash 
end


#should NOT select ele that are true for both procs
#should return new arr
#new arr should have ele where the result is TRUE when only one of the procs 
def xor_select(arr, proc1, proc2)

    arr.select do |ele|
        if (proc1.call(ele) && !proc2.call(ele)) || (!proc1.call(ele) && proc2.call(ele))
            ele
        end
    end
end


#return a number 
#representing the count of procs that eval to true

# using .count --> you are counting how many procs are true
def proc_count(val, arr)

    arr.count do |prc|          #the arr contains procs --> you are iterating through the arr, looking at each proc
        prc.call(val)           #you are calling the procs individually on the value and seeing if they eval to true
    end
end

