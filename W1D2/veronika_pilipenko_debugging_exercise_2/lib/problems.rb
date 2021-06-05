
#return the largest divisor of the number that is also prime 

#define what a prime number is (maybe helper function?)

#iterate through your nums (2..num)

def largest_prime_factor(number)
        max = 0

        (2..number).each do |divisor|                  
            if (number % divisor == 0) && prime?(divisor) && max < divisor 
            max = divisor 
            end
        
        end

    max 

end

# a prime number is only divisible by 1 and itself 
def prime?(num)

    return false if num < 2

    (2...num).each do |divisor|      #exclusive
        if num % divisor == 0    #if the number has a divisor and it evenly divides, it isn't prime // false, exit loop
            return false
        end
    end

    return true 

end

#return true when there are no duplicate characters in the string
#return false if there are 


#initialize something to keep track of the characters 
#maybe a hash?
#iterate through the string 
#after I have a hash with all the keys
#if the value is greater than 1, return false

def unique_chars?(string)
    alphabet = ('a'..'z').to_a
    counter = Hash.new(0)

    string.each_char do |char|
        if alphabet.include?(char)
            counter[char] += 1
        end 
    end

        word = counter["char"]
            if word > 1
            false
        end

 true

end

#return a hash 
#keys = elements that are repeated in arr 
#values = indices 

#initialize an empty hash 
#iterate through the array with index

def dupe_indices(arr)
    hash = {}

    arr.each_with_index do |ele, idx|
        hash[ele] << []


end



    it "should return an hash where keys are the elements that were repeated in the array and values are the indices where that element appears" do
        expect(dupe_indices(["a", "b", "c", "c", "b"])).to eq({"b"=>[1,4], "c"=>[2,3]})
        expect(dupe_indices(["a", "a", "c", "c", "b", "c"])).to eq({"a"=>[0,1], "c"=>[2,3,5]})
        expect(dupe_indices(["a", "b", "c"])).to eq({})
    end
end