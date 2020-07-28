# 1. Divide string in 2
# 2. read each letter on both strings
# 3. remove each matching letter
# 4. Leave only letters with no match
# 5. Count matching letters

# asdf | awdf
# asdf
# awdf

# felipe
# opefel

# elipe
# elope

# lipe
# lope

# ipe
# ope

# ie
# oe

# i
# o

# ne
# ui

def anagram(s)
  if s.length.even?
    substring1 = s[0..s.length/2 - 1]
    substring2 = s[s.length/2..s.length-1]
    i = 0
    while i < substring1.length-1
      if substring2.index(substring1[i])
        substring1.delete_at(i)
        substring2..delete_at(substring2.index(substring1[i]))
      else
        i++
      end
    end
    return substring1.count
  else
    return -1
  end
end

p anagram("asaaasaaaa")