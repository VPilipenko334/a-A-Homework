# require "byebug"
# require "part_2"

# input = arr 
# output = hash 
# iterate through the array/ use .each / create a new hash Hash.new(0)
# count / iterate / hash[element] = v / value will be found using count mthd
# return hash 


def element_count(arr)
    hash = {} 

    # debugger 
    arr.each {|ele| hash[ele] = arr.count(ele) }

    hash 
end

# input is a string and a hash
# output is a string
# create empty string variable
# iterate through string using each_char
# if hash has the character, then replace the character with the value
# else, keep char
# return new string and high five



def char_replace!(str, hash)

    str.each_char.with_index do |char, idx|
        if hash.has_key?(char)
            str[idx] = hash[char]
        else
            str[idx] = char
        end
    end

    str
end

#   describe "char_replace!" do
#     it "should accept a string and a hash as args" do
#         expect { char_replace!("hello world", {"l"=>"7", "e"=>"a", " "=>"-", "o"=>"q"}) }.to_not raise_error
#     end

#     it "should mutate the original string by replacing chars of the string with their corresponding values in the hash, 
# if the char is a key of the hash" do
#       string_1 = "hello world"
#       char_replace!(string_1, {"l"=>"7", "e"=>"a", " "=>"-", "o"=>"q"})
#       expect(string_1).to eq("ha77q-wqr7d")


#       string_2 = "pizza"
#       char_replace!(string_2, {"z"=>"x", "t"=>"f", "e"=>"a"})
#       expect(string_2).to eq("pixxa")
#     end

#     it "should return the mutated string" do
#       str = "hello world"
#       expect(char_replace!(str, {"l"=>"7", "e"=>"a", " "=>"-", "o"=>"q"})).to be(str)
#     end
#   end


# input is an array
# output is an array
# array.inject to get the product of all elements

def product_inject(arr)
    arr.inject { |acc,ele| acc * ele }
end

#   describe "product_inject" do
#     it "should accept an array of numbers as an arg" do
#       expect { product_inject([4, 2, 5]) }.to_not raise_error
#     end

#     it "should return the total product of all elements multiplied together" do
#       expect(product_inject([4, 2, 5])).to eq(40)
#       expect(product_inject([4, 2, 5, 3])).to eq(120)
#       expect(product_inject([7, 2])).to eq(14)
#       expect(product_inject([3])).to eq(3)
#     end

#     it "should use Array#inject on the array to calculate the answer" do
#       answer = double("the answer")
#       array = [4, 2, 5]
#       allow(array).to receive(:inject).and_return(answer)
#       expect(product_inject(array)).to be(answer)
#     end
#   end
# end
