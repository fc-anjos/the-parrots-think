require 'set'
def sieve(max)
array_non_primes = []
max.times do
    array_non_primes.push(true)
  end
  array_non_primes[0] = false;
  k = 2
  i = k
  j = 1
  while k < max
    if array_non_primes[k - 1] == true
      i = k
      while i*j <= max
        array_non_primes[(i*j) - 1] = false if j != 1
        j += 1
      end
      j = 1
    end
    k += 1
  end
  return array_non_primes
end

def is_prime(number, primes)
  if primes.include?(number)
    return true
  else
    return false
  end
end

def number_of_primes(arr)
  # write your code here
  primes = []
  prime_amount = 0
  array_non_primes = sieve(arr.max)
  # display_primes(array_non_primes)
  array_non_primes.each_with_index { |prime, index| primes.push(index + 1) if prime }
  p primes
  arr.each do |element|
    if is_prime(element, primes)
      prime_amount += 1
    end
  end
  return prime_amount
end

def display_primes(array_non_primes)
  array_non_primes.each_with_index do |element, index|
    puts "#{index + 1 }: #{element}"
  end
end

#p sieve(23)

number_of_primes([55, 11, 33, 25, 15, 66, 35, 44, 16, 9, 22])
# => 1

# puts number_of_primes([2, 3, 5, 6, 9])
# => 3

# puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

# puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
#=> 3