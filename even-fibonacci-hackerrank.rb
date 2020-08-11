require 'benchmark'
require 'benchmark/memory'
require 'benchmark/ips'

#---
# FIRST METHOD
# ---

def even_fibonacci_reduce(n)
    arr = [1,2]
    c = 2
    while arr[c-1] + arr[c-2] <= n
      arr[c] = arr[c-1]+arr[c-2]
      c += 1
    end
    arr.reduce(0) { |acc, v| v % 2 == 0 ? acc + v : acc }
  end

# review how hackerrank output method impacts

# t = gets.strip.to_i
# for a0 in (0..t-1)
#     n = gets.strip.to_i
#     even_fibonacci(n)
# end

#---
# SECOND METHOD
# ---

def even_fibonacci_loop(n)
    frst = 0
    scnd = 1
    sum = 0
    i = 0
    max = n
    while i <= max
      i = frst + scnd
      sum += i if i % 2 == 0 && i <= max
      frst = scnd
      scnd = i
    end
    sum
  end

# review how hackerrank output method impacts

# t = gets.strip.to_i
# for a0 in (0..t-1)
#     n = gets.strip.to_i
#     even_fibonacci(n)
# end

#########
# TESTING
#########

def benchmark(n)
  Benchmark.bmbm do |x|
    x.report("Even Fibonacci Time Elapsed") { even_fibonacci_reduce(n) }
  end

  Benchmark.memory do |x|
    x.report("Even Fibonacci Memory") { even_fibonacci_reduce(n) }
  end

  Benchmark.ips do |x|
    x.report("Even Fibonacci Iteration Per Second") { even_fibonacci_reduce(n) }
  end
end

n = 10000

benchmark(n)