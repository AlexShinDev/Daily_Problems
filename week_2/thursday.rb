def split_array(arr, integer)
  split_array = []
  until arr.empty? == true
    split_array << arr.shift(integer)
  end
  split_array
end

p split_array([0, 1, 2, 3, 4, 5], 2)  #=> [[0, 1], [2, 3], [4, 5]]
p split_array([0, 1, 2, 3, 4, 5], 3)  #=> [[0, 1, 2], [3, 4, 5]]