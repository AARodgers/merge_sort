require 'pry'

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


def merge(left_items, right_items)
    left_index = 0
    right_index = 0
    sorted = []
    while left_index < left_items.count || right_index < right_items.count
        left_item = left_items[left_index]
        right_item = right_items[right_index]
        if left_item && !right_item
            sorted.push(left_item)
            left_index += 1
        elsif right_item && !left_item
            sorted.push(right_item)
            right_index +=1
        else
            if left_item < right_item
                sorted.push(left_item)
                left_index +=1
            else
                sorted.push(right_item)
                right_index += 1
            end
        end
    end
    return sorted
end

puts merge_sort([8, 6, 7, 5, 3, 0, 9])


