def my_map(arr, &prc)
    new_array = [] 
    arr.each do |ele| 
        new_array << prc.call(ele) 
    end
    new_array 
end

def my_select(arr, &prc)
    new_array = []

    arr.each do |number|
        new_array << number if prc.call(number) 
    end

    new_array
end