def palindrome_index(s)
    i = 0
    j = s.length - 1
    while i < j && s[i] == s[j]
        i += 1
        j -= 1
    end
    return i if isPal?(s[0...i] + s[i+1 ... s.length])
    return j if isPal?(s[0...j] + s[j+1 ... s.length])
    -1
end

def isPal?(s)
    s == s.reverse
end
