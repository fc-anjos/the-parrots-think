require 'json'
require 'date'
require 'stringio'

# Complete the libraryFine function below.
def libraryFine(d1, m1, y1, d2, m2, y2)
  date1 = DateTime.new(y1,m1,d1)
  date2 = DateTime.new(y2,m2,d2)
  
  dif = (date1 - date2).to_i
  if dif <= 0
      fine = 0
  elsif dif > 0 && m2 == m1 && y2 == y1
      fine = 15 * dif
  elsif m2 < m1 && y2 == y1
      fine = 500 * (m1 - m2)
  elsif y2 < y1
     fine = 10000 
  end
    puts fine
  return fine

end

puts libraryFine(24, 2, 2015, 15, 2, 2015)