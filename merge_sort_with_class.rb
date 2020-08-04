
# array = [4, 2, 6, 5, 7, 5]

class Array
    def merge_sort

        return self if self.length <= 1

        mid = self.length / 2
        left = self.take(mid)
        right = self.drop(mid)

        sort_left = left.merge_sort
        sort_right = right.merge_sort

        merge(sort_left, sort_right)
    end

    def merge(left, right)
        sorted = []

        until left.empty? || right.empty?
            if left.first < right.first
                sorted << left.shift
            elsif left.first == right.first
                sorted << left.shift
                sorted << right.shift
            elsif right.first < left.first
                sorted << right.shift
            end
        end

        sorted + left + right

    end
end


# want to split array until the array lengths are equal to one
# then, use helper method 'merge' to help sort the arrays
# base case = when array length is 1
#array is the Array
#find mid point to split array: mid = array.length / 2
# in merge: loop until either left or right side is empty and push or append to end of sorted empty array the array that has a value in it
#compare first element of each array
# if left first element is less than right.first element, then shovel it into sorted array and take it off the array it came from (use .shift: it returns the element and removes it from array)
# if left first element is equal to right first element, shovel both in
# then if right first element is less than left, than shift that element into sorted array
# when the loop, ends, either the left or right array will be empty, with one of them having an element in it left over, need to shovel that element into sorted array ( use sorted + left + right), if left or right are empty, it won't do anything
#
