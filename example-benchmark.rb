require 'set'
require 'benchmark'
require 'benchmark/memory'
require 'benchmark/ips'

def sieve(max)
  full_set = (2..max).to_set
  non_primes_set = Set.new
  i = 1
  while i < max
    i += 1
    k = 2
    while (k * i) < max
      k += 1
      non_primes_set << k * i
    end
  end
  full_set - non_primes_set
end

def number_of_primes(arr)
  primes = sieve(arr.max)
  prime_amount = 0
  arr.each do |element|
    prime_amount += 1 if primes.include?(element)
  end
  prime_amount
end

arr = [121, 17, 21, 29, 11, 341, 407, 19, 119, 352]

def benchmark(arr)
  Benchmark.bmbm do |x|
    x.report("Prime Numbers Time Elapsed") { number_of_primes(arr) }
  end

  Benchmark.memory do |x|
    x.report("Prime Numbers Memory") { number_of_primes(arr) }
  end

  Benchmark.ips do |x|
    x.report("Prime Numbers Iteration Per Second") { number_of_primes(arr) }
  end
end

benchmark(arr)
# puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3

# puts number_of_primes([2, 3, 5, 6, 9])
# => 3


# puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

