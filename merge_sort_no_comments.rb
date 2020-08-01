def merge_sort(arr)
    if arr.length <= 1
        return arr
    end

    mid = arr.length / 2
    left = arr.take(mid)
    right = arr.drop(mid)

    sorted_left = merge_sort(left)
    sorted_right = merge_sort(right)
    return merge(sorted_left, sorted_right)
end

def merge(left_items, right_items)
    left_index = 0
    right_index = 0
    sorted = []
    while left_index < left.count || right_index < right.count
        

end
