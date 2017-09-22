require 'prime'

def is_prime(integer)
  Prime.prime?(integer)
end

p is_prime(7)