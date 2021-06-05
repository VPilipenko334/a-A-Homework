def unique_chars?(string)
    alphabet = ('a'..'z').to_a
    counter = Hash.new(0)

    string.each_char do |char|
        if alphabet.include?(char)
            counter[char] += 1
        end
    end

    counter 
end

p unique_chars?("computer")