def missing(string)
  string_arr = string.chars
  range = (string_arr.first..string_arr.last).to_a # ["a".."f"]
  missing_letters = []

  range.each do |letter|
    if string_arr.include?(letter)
    else
      missing_letters << letter
    end
  end
    missing_letters.join
end

p missing("ac")