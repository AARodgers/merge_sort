def merge_sort(arr)

    return arr if arr.length <= 1

    mid = arr.length / 2
    left = arr.take(mid)
    right = arr.drop(mid)

    sorted_left = merge_sort(left)
    sorted_right = merge_sort(right)

    merge(sorted_left, sorted_right)
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
