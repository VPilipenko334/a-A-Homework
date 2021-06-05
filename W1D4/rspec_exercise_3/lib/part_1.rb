require "byebug"

def is_prime?(num)

    return false if num < 2

    if !(num % 1 == 0 && num % num == 0)
        return false
    end

    (2...num).each {|factor| return false if num % factor == 0 }

    true
end

# input is a number
# output is a prime number 
# use helper mthd; determine if the num is prime or not 
# return a boolean 
# use a while loop / keep iterating until prime num arr = argument num
# prime_num = []
# return last element in the prime num arr 

def nth_prime(num)
    prime_nums = []
    candidate = 1

    while prime_nums.length < num 
        # debugger
        prime_nums << candidate if is_prime?(candidate) # true, 
        candidate += 1
    end

    prime_nums[-1]
end

# p nth_prime(5) # 11

# describe "nth_prime" do
#     it "should accept a number, n, as an arg" do
#       expect { nth_prime(5) }.to_not raise_error
#     end

#     it "should return the nth prime number sequentially" do
#       expect(nth_prime(1)).to eq(2)
#       expect(nth_prime(2)).to eq(3)
#       expect(nth_prime(3)).to eq(5)
#       expect(nth_prime(4)).to eq(7)
#       expect(nth_prime(300)).to eq(1987)
#     end
#   end


# return an array
# a range defined by min and max
# iterate through this range with an each method
# if prime number is found it gets shoveled into our output prime array
# if not, it doesn't get shoveled into our output prime array
# return output prime array

def prime_range(min, max)
    prime_nums = []
    (min..max).each { |el| prime_nums << el if is_prime?(el) }
    prime_nums
end

# describe "prime_range" do
#     it "should accept two numbers, min and max, as args" do
#       expect { prime_range(4, 17) }.to_not raise_error
#     end

#     it "should return an array of all prime numbers between min and max" do
#       expect(prime_range(4, 17)).to match_array([5, 7, 11, 13, 17])
#       expect(prime_range(23, 31)).to match_array([23, 29, 31])
#       expect(prime_range(1990, 2000)).to match_array([1993, 1997, 1999])
#       expect(prime_range(-10, 1 )).to match_array([])
#     end
#   end
# end
