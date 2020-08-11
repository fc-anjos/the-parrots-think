def angryProfessor(k, a)
  a.filter! { |x| x <= 0 }
  a.length < k ? 'YES' : 'NO'
end