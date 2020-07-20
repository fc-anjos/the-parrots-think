def pickingNumbers(a)
    # Write your code here
    a.sort!
    all_sub = []
    i = 0
    while i < a.length
      sub_array = []
        j = i + 1
        sub_array.append(a[i])
        while a[j] == a[i] + 1 || a[j] == a[i]
          sub_array.append(a[j])
          j += 1
        end
        p sub_array
        all_sub.append(sub_array)
        i = j
    end
    print all_sub
end
