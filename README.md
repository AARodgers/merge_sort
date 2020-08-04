# merge_sort
practice with merge_sort algorithm in ruby

- this merge_sort algorithm will modify the original array

SPEC:
1. Start with an unorder array:
    - INPUT: [4, 2, 6, 5, 7, 5]
    - OUTPUT: [2, 4, 5, 5, 6, 7]

2. Split array in halves until you have list with only one element
    [4, 2, 6] [5, 7, 5]
    [4] [2, 6] [5] [7,5]
    [4], [2], [6], [5], [7], [5]
3. Compare the first element of each array to next and merge elements and shift them from the original array:
    Compare 4 and 2:
    original list: [4], [2], [6], [5], [7], [5]
      [2, 4]
    new list: [6], [5], [7], [5]
    [2, 4]
    compare 6 and 5:
    [2, 4] [5, 6]
    new list: [7], [5]
    compare 7 and 5:
    new list:
    [2, 4] [5, 6] [5, 7]
    Merge sorted arrays by comparing the first element of each array to the first element of the next array:
    compare: 2 and 4 ( when you shovel it into a new array, you will be shifting the elements):
    [4] [5, 6] [5, 7]
    compare 4 to 5:
    [] [5, 6] [5, 7] (4 was less than 5 and got shoveled into new array, now LEFT array is empty, so just shovel in next sorted array)
    [2, 4, 5, 6]
    new list: [][][5, 7]
    new list: [2, 4, 5, 6] [5, 7]
    compare 2 and 5:
    new list: [4, 5, 6][5, 7]
    new list:[2]
    compare 4 and 5:
    [2, 4, 5]
    compare 5 and 5:
    [2, 4, 5, 5][6] [7]
    compare 6 and 7:
    [6][7]
    [] [7]
    new list:
    OUTPUT: [2, 4, 5, 5, 6, 7]
=====================================================
NOTES:
- .shift (Removes the first element of self(an array) and returns it (shifting all other elements down by one). Returns nil if the array is empty. )
    args = [ "-m", "-q", "filename" ]
args.shift     #=> "-m"
args           #=> ["-q", "filename"]

args = [ "-m", "-q", "filename" ]
args.shift(2)  #=> ["-m", "-q"]
args           #=> ["filename"]
https://ruby-doc.org/core-2.5.0/Array.html#method-i-shift

========================================================

- .take (take(n) → Returns first n elements from the array
a = [1, 2, 3, 4, 5, 0]
a.take(3)             #=> [1, 2, 3]

                           ^
[1] pry(main)> array = [4, 2, 6, 5, 7, 5]
=> [4, 2, 6, 5, 7, 5]
[2] pry(main)> mid = array.length / 2
=> 3
[3] pry(main)> left = array.take(mid)
=> [4, 2, 6]
[4] pry(main)>

==================================================
- .drop (drop(n) → new_array
Drops first n elements from ary and returns the rest of the elements in an array.
[1] pry(main)> array = [4, 2, 6, 5, 7, 5]
=> [4, 2, 6, 5, 7, 5]
[2] pry(main)> mid = array.length / 2
=> 3
[3] pry(main)> left = array.take(mid)
=> [4, 2, 6]
[4] pry(main)> right = array.drop(mid)
=> [5, 7, 5]
[5] pry(main)>
===========================================================
push
Append — Pushes the given object(s) on to the end of this array. This expression returns the array itself, so several appends may be chained together. See also #pop for the opposite effect.

a = [ "a", "b", "c" ]
a.push("d", "e", "f")
        #=> ["a", "b", "c", "d", "e", "f"]
[1, 2, 3].push(4).push(5)
        #=> [1, 2, 3, 4, 5]
==============================================================

Notes:
- require only works with gems, need require_relative to load a ruby file by name in pry console for it to recognize it
- if want to try out methods in a file in pry, need to put require_relative 'file_name'
- call argument outside of class ex. Array.new.say_hello
- can type 'ruby' in terminal to run a ruby interpreter ( doesn't know about your file, just reads what you type after)
- To test code without calling on an object or class:
    # input: [1, 2, 3, 4, 5]
# output: [1, 4, 9, 16, 25]
def square_all(nums)
  nums.map do |num|
    num ** 2
  end
end

puts square_all([1, 2, 3, 4, 5])
 (need puts or it will return noting in the terminal)

 ======================================================

 # input: [1, 2, 3, 4, 5]
# output: [1, 4, 9, 16, 25]
# def square_all(nums)
#   nums.map do |num|
#     num ** 2
#   end
# end

# puts square_all([1, 2, 3, 4, 5])

============================================================
With Class NOTES:

# want to split array until the array lengths are equal to one
# then, use helper method 'merge' to help sort the arrays
# base case = when array length is 1
#array is the Array
#find mid point to split array: mid = array.length / 2

===============================================================

Using 'puts' to see values:
def merge_sort(arr)
    if arr.length <= 1
        return arr
    end

    mid = arr.length / 2
    left = arr.take(mid)
    right = arr.drop(mid)

    sorted_left = merge_sort(left)
    puts "sorted left from #{left} into #{sorted_left}"
    sorted_right = merge_sort(right)
    puts "sorted right from #{right} into #{sorted_right}"
    return merge(sorted_left, sorted_right)
end

merge_sort git:(master) ✗ ruby merge_sort_no_comments.rb
sorted left from [8] into [8]
sorted left from [6] into [6]
sorted right from [7] into [7]
sorted right from [6, 7] into [6, 7]
sorted left from [8, 6, 7] into [6, 7, 8]
sorted left from [5] into [5]
sorted right from [3] into [3]
sorted left from [5, 3] into [3, 5]
sorted left from [0] into [0]
sorted right from [9] into [9]
sorted right from [0, 9] into [0, 9]
sorted right from [5, 3, 0, 9] into [0, 3, 5, 9]
0
3
5
6
7
8
9

============================================

# input: [1, 2, 3, 4, 5]
# output: [1, 4, 9, 16, 25]
# def square_all(nums)
#   nums.map do |num|
#     num ** 2
#   end
# end

# puts square_all([1, 2, 3, 4, 5])
============================================
