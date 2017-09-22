
def palindrome(string)
  arr = string.split("")
  if arr == arr.reverse
     true
  else 
     false
  end
end

p palindrome("mo")
