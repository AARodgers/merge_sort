def merge_sort(arr)

    if arr.length <= 1
        return arr

    mid = arr.length / 2
    left = arr.take(mid)
    right = arr.drop(mid)

    sorted_left = left.merge_sort
    sorted_right = right.merge_sort
    merge(sorted_left, sorted_right)
end

def merge(left, right)
    sorted = []

    
end
