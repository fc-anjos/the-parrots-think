def anagram(s)
  if s.length.even?
    substring1 = s[0..s.length/2 - 1].split('')
    substring2 = s[s.length/2..s.length-1].split('')
    i = 0
    while i <= substring1.length
      if substring2.index(substring1[i])
        char = substring1[i]
        substring1.delete_at(i)
        substring2.delete_at(substring2.index(char))
      else
        i += 1
      end
    end
    return substring1.count
  else
    return -1
  end
end

puts anagram("xaxbbbxx")
# xaxb
# bbxx
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