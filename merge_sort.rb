# class ArrayPractice
#     def say_hello
#         puts 'hello'
#     end
# end


# class Array
#     def merge_sort

#         return self if self.length <= 1

#         mid = self.length / 2
#         left = self.take(mid)
#         right = self.drop(mid)

#         sort_left = left.merge_sort
#         sort_right = right.merge_sort
#     end


#     # array = [4, 2, 6, 5, 7, 5]


#     # how is above recursive? where is the loop?

#     def merge
#     end
# end


def merge_sort(arr)
    puts("I am array #{arr}")
    if arr.length <= 1
        puts("I am a solo item so I am returning myself")
        return arr
    end

    mid = arr.length / 2
    left = arr.take(mid)
    right = arr.drop(mid)
    puts("I was split into left: #{left}, right: #{right}")

    sorted_left = merge_sort(left)
    sorted_right = merge_sort(right)
    puts("I got the sorted left: #{sorted_left}, right: #{sorted_right} and merged them")
    return merge(sorted_left, sorted_right)
end

def merge(left_items, right_items)
    left_index = 0
    right_index = 0
    sorted = []
    while left_index < left.count || right_index < right.count
        puts("#{left_index}, #{left.count}; #{right_index}, #{right.count}")
        left_item = left_items[left_index]
        right_item = right_items[right_index]
        if left_item && !right_item
            sorted.push(left_item)
            left_index += 1
        elsif right_item && !left_item
            sorted.push(right_item)
            right_index += 1
        else
            if left_item < right_item
                sorted.push(left_item)
                left_index += 1
            else
                sorted.push(right_item)
                right_index += 1
            end
        end
    end
    puts("Sorted #{left} and #{right} into #{sorted}")
    return sorted
end

puts merge_sort([8, 6, 7, 5, 3, 0, 9])


# input: [1, 2, 3, 4, 5]
# output: [1, 4, 9, 16, 25]
# def square_all(nums)
#   nums.map do |num|
#     num ** 2
#   end
# end

# puts square_all([1, 2, 3, 4, 5])


# want to split array until the array lengths are equal to one
# then, use helper method 'merge' to help sort the arrays
# base case = when array length is 1
#array is the Array
#find mid point to split array: mid = array.length / 2
