def libraryFine(d1, m1, y1, d2, m2, y2)
  date1 = DateTime.new(y1,m1,d1)
  date2 = DateTime.new(y2,m2,d2)
  
  dif = (date1 - date2).to_i
  puts dif
  if dif <= 0
      fine = 0
  elsif dif > 0 && m2 == m1 && y2 == y1
      fine = 15 * dif
  elsif m2 > m1 && y2 == y1
      fine = 500 * m2 - m1
  elsif y2 > y1
     fine = 10000 
  end
  fine
end