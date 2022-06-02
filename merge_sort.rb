
def merge(a, b)
  new_arr = []
  while a.length > 0 || b.length > 0
    if a.length == 0
      new_arr.concat(b)
      break;
    end
    if b.length == 0
      new_arr.concat(a)
      break;
    end
    new_arr.push(a[0] < b[0] ? a.shift : b.shift)
  end
  new_arr
end

def merge_sort(arr)
  return arr if arr.length == 1
  middle = arr.length / 2
  return merge(merge_sort(arr[0...middle]), merge_sort(arr[middle..-1]))
end


p merge_sort([1,5,6,2,6,1,6,4,2,6,7,3])
