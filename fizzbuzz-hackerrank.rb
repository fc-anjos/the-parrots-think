(1..100).each do |i|
    by3,by5,f,b = i%3==0, i%5==0,'Fizz','Buzz'
    puts by5 && by3 ? f+b : by5 ? b : by3 ? f : by3 || by5 = false ? i : i
  end