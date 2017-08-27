def find_longest_word(string)
string.split(" ").max { |a, b| a.length <=> b.length}
end

# def find_longest_word(string)
#   split_string = string.split(" ")
#   longest_word = split_string.max_by(&:length)
# end

p find_longest_word("What is the longest word in this phrase?")  #=> "longest"