def repeatedString(s, n)
    a_total_counter = 0
    remaining = 0
    a_word_counter = s.count 'a'
    times_repeated = (n / s.length).floor()
    dif = n % s.length
      remaining = s[0...dif].count 'a' if dif != 0
    a_total_counter += remaining
    a_total_counter += (a_word_counter * times_repeated)
    return a_total_counter
  end