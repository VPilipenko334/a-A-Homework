require_relative "Stack"

class SmartStack < Stack 

    def initialize(num)
        @max_size = num
        @underlying_array = []
    end

    def max_size
        @max_size
    end

    def full?
        if @underlying_array.length == @max_size
            return true 
        else
            return false 
        end
    end

    def push(*items)
        if items.length + self.size > self.max_size
            raise 'stack is full' 
        end

        items.each do |item|
            super(item)
        end
        
        self.size
       
    end

    def pop(n = 1)
        removed = []

        n.times do 
           removed << @underlying_array.pop
        end

        removed
    end

    

end 