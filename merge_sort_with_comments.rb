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
    while left_index < left_items.count || right_index < right_items.count
        puts("#{left_index}, #{left_items.count}; #{right_index}, #{right_items.count}")
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
    puts("Sorted #{left_items} and #{right_items} into #{sorted}")
    return sorted
end

puts merge_sort([8, 6, 7, 5, 3, 0, 9])

# questions:
# - if left_item && !right_item ( what does !right_item mean? it's not there or zero?)
# - what does this do in the function as a whole? left_index += 1, why need to do it?


# Should return:
# merge_sort git:(master) ✗ ruby merge_sort.rb
# I am array [8, 6, 7, 5, 3, 0, 9]
# I was split into left: [8, 6, 7], right: [5, 3, 0, 9]
# I am array [8, 6, 7]
# I was split into left: [8], right: [6, 7]
# I am array [8]
# I am a solo item so I am returning myself 
# I am array [6, 7]
# I was split into left: [6], right: [7]
# I am array [6]
# I am a solo item so I am returning myself
# I am array [7]
# I am a solo item so I am returning myself
# I got the sorted left: [6], right: [7] and merged them
# 0, 1; 0, 1
# 1, 1; 0, 1
# Sorted [6] and [7] into [6, 7]
# I got the sorted left: [8], right: [6, 7] and merged them
# 0, 1; 0, 2
# 0, 1; 1, 2
# 0, 1; 2, 2
# Sorted [8] and [6, 7] into [6, 7, 8]
# I am array [5, 3, 0, 9]
# I was split into left: [5, 3], right: [0, 9]
# I am array [5, 3]
# I was split into left: [5], right: [3]
# I am array [5]
# I am a solo item so I am returning myself
# I am array [3]
# I am a solo item so I am returning myself
# I got the sorted left: [5], right: [3] and merged them
# 0, 1; 0, 1
# 0, 1; 1, 1
# Sorted [5] and [3] into [3, 5]
# I am array [0, 9]
# I was split into left: [0], right: [9]
# I am array [0]
# I am a solo item so I am returning myself
# I am array [9]
# I am a solo item so I am returning myself
# I got the sorted left: [0], right: [9] and merged them
# 0, 1; 0, 1
# 1, 1; 0, 1
# Sorted [0] and [9] into [0, 9]
# I got the sorted left: [3, 5], right: [0, 9] and merged them
# 0, 2; 0, 2
# 0, 2; 1, 2
# 1, 2; 1, 2
# 2, 2; 1, 2
# Sorted [3, 5] and [0, 9] into [0, 3, 5, 9]
# I got the sorted left: [6, 7, 8], right: [0, 3, 5, 9] and merged them
# 0, 3; 0, 4
# 0, 3; 1, 4
# 0, 3; 2, 4
# 0, 3; 3, 4
# 1, 3; 3, 4
# 2, 3; 3, 4
# 3, 3; 3, 4
# Sorted [6, 7, 8] and [0, 3, 5, 9] into [0, 3, 5, 6, 7, 8, 9]
# 0
# 3
# 5
# 6
# 7
# 8
# 9
