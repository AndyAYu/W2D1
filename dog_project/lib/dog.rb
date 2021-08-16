class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
       @name
    end

    def breed
       @breed
    end

    def age 
        @age
    end

    def age=(number)
        @age = number
    end

    def bark
        if @age > 3 
            return @bark.upcase
        else
            return @bark.downcase
        end
    end

    def favorite_foods
        @favorite_foods
    end

    def favorite_food?(str)
        # if @favorite_foods.downcase.include?(str.downcase)
        #     return true
        # else
        #     return false
        # end

        @favorite_foods.each do |food|
            if (food.downcase) == (str.downcase)
                return true
            end
        end
        false
    end
end
