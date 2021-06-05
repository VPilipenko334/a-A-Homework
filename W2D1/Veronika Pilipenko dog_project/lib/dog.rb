class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods

        def name
            @name
        end

        def breed 
            @breed
        end

        def breed
            @breed
        end

        def age
            @age
        end

        def age=(new_age)
            @age = new_age 
        end

        def bark
            @bark
        end

        def favorite_foods
            @favorite_foods
        end

        def bark 
            if self.age > 3
                return @bark.upcase 
            elsif self.age <=3 
                return @bark.downcase
            end
        end



        def favorite_food?(string)
            @favorite_foods.map(&:downcase).include?(string.downcase) 
        end
    end
end