# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

    def span 
        if self.length > 0
        min = self.min 
        max = self.max
        max - min
        elsif self.length == 0
            return
        end
    end

    def average
        if self.length > 0
            # debugger
            return self.sum / (self.length * 1.00)
        elsif self.length == 0
            return nil
        end
    end
        require "byebug"
    def median
        # debugger
        if self.length == 0
            return nil
        end
        sorted_arr = self.sort 
        # debugger
        sorted_arr.each_with_index do |ele, idx|
            if sorted_arr.length.odd? && (idx * 2) == sorted_arr.length - 1
                return ele
            elsif idx * 2 == sorted_arr.length
                return (ele + sorted_arr[(idx-1)]) / 2.0
            end
        end
    end

    def counts
        hash = Hash.new(0)
        self.each do |ele|
            hash[ele] += 1
        end
        hash
    end

    def my_count(value)

        self.counts[value] # returns hash[value] returns value
    end

    def my_index(value)
        self.each_with_index do |ele, idx|
            if ele == value
                return idx
            end
        end
        if !self.include?(value)
            return nil
        end
    end
    # require "byebug"
    def my_uniq
        new_arr = []
        self.each do |ele|
            if !new_arr.include?(ele)
                new_arr << ele
                # debugger
            end
        end
        new_arr
    end

    def my_transpose
        new_arr = []
        self.each_with_index do |subarr,firstidx|
            shov_arr = []
            self.each_with_index do |ele,secondidx|
                shov_arr << self[secondidx][firstidx]
            end
            new_arr << shov_arr
        end
        new_arr
    end
end

