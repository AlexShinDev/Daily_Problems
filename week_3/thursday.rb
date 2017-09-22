def sum_of_range(num, num_2)
  if num > num_2
    (num_2..num).reduce(:+) 
  end

  if num < num_2
    (num..num_2).reduce(:+) 
  end

end

p sum_of_range(2, 5)