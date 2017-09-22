# Task 1 : Comment the code
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def decoded_cipher(coded_message)
  input = coded_message.downcase.split("") # It takes the parameter, makes it lowercase, and puts each character in the string into an array(input).
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}



  input.each do |letter| # taking the modified parameter and leooping it
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    # cipher.select { |hash| hash.key = letter}.map { |decoded_letter| decoded_sentence << decoded_letter }
    cipher.each_key do |key| # The loop is going through the cipher hash.
      if letter == key  # It is comparing the first letter(input) with each "letter" in the hash. 
        decoded_sentence << cipher[key] #When the letter == key, it puts the translated letter into the "decoded_sentence" array
        found_match = true
        break  #Since the program already found out the translated portion, it doesn't need to through with the rest of the code.
      elsif letter == "@" || letter == "#" || letter == "$" || letter == "%"|| letter == "^" || letter == "&"|| letter =="*" #All the diffferent types of symbols are multiple translations for "space".
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(letter) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << letter
        found_match = true
        break
      end
    end
    if not found_match  # What is this looking for?
      decoded_sentence << letter
    end
  end
  decoded_sentence = decoded_sentence.join("")

  return decoded_sentence # What is this returning?
end

puts "Decoding messages..."
puts decoded_cipher("fi%wyvi%xs^hvmro^csyv#szepxmri")
puts decoded_cipher("asa,&csy^qywx#lezi^er@eajyp^psx$sj%jvii#xmqi&sr#csyv*lerhw!")
puts decoded_cipher("xs*amr@xli%keqi,#csy@qywx#ompp&qi,&nslr#vsqivs.")
puts decoded_cipher("izivcfshc*ks@xs*gsppiki,#wxyhc*levh,%wxyhc#levh.")
puts decoded_cipher("ai@mrxirh^xs%fikmr&sr*xli&jmvwx^sj^jifvyevc@yrviwxvmgxih&wyfqevmri%aevjevi.")
puts 

# Task 3: Refactor the initial solution (rewrite the code in a shorter, dry, easy to read solution without breaking the tests)

puts decoded_cipher("9%dnep")




# DRIVER TESTS GO BELOW THIS LINE
puts "Running tests for `decoded_cipher`..."
puts decoded_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true

# Task 2: Write additional tests
# Create more driver test code based on the decoded messages. Driver test code statements should always return "true."






puts
puts "Finished running tests."