def mutation?(string_1, string_2)
  base = string_1.split(//)
  compare = string_2.split(//)

  compare.each do |letter|
    if base.include?(letter) 
      @confirmation = true
    else
      @confirmation = false
      break
    end
  end
  @confirmation
end

p mutation?("healthy", "yea")