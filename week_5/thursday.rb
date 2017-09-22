def find_the_most_letter_a(input)
  input.reduce { |word1, word2| (word1.chars.count "a") > (word2.chars.count "a") ? word1 : word2 }
end

p find_the_most_letter_a(["alphabet", "aardvark", "anarchy"]) 