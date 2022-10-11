# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

    def span
        if length == 0
            return nil
        end
        largest = self[0]
        smallest = self[0]
        (0..self.length-1).each do |i|
            if self[i] > largest
                largest = self[i]
            end
            if self[i] < smallest
                smallest = self[i]
            end
        end
        return largest - smallest
    end


    def average
        if length == 0
            return nil
        end

        return sum * 1.0/length
    end

    def median
        if length == 0
            return nil
        end

        if length % 2 != 0
            sort()
            return self[length/2]
        end

        if length % 2 == 0
            
        end

    end
end
