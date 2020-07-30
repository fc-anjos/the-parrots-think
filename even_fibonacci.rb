t = gets.strip.to_i
for a0 in (0..t-1)
    upper_limit = gets.strip.to_i
    current =  1
    previous = 1
    sum = 0
    while current < upper_limit
        temp = current
        current = current + previous
        previous = temp
        if (current < upper_limit) && current.even?
            sum += current
        end
    end
    puts sum
end
