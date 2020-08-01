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
