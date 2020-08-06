#---
# FIRST METHOD
# ---

def even_fibonacci(n)
    arr = [1,2]
    c = 2
    while arr[c-1] + arr[c-2] <= n
      arr[c] = arr[c-1]+arr[c-2]
      c += 1
    end
    p arr.reduce(0) { |acc, v| v % 2 == 0 ? acc + v : acc }
  end

# review how hackerrank output method impacts

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    even_fibonacci(n)
end

#---
# SECOND METHOD
# ---

def even_fibonacci(n)
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
    puts sum
  end  

# review how hackerrank output method impacts

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    even_fibonacci(n)
end