def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  value = min
  while min < max
  min +=1
  value = value + min
  end
  value
end
puts sum_with_while(1,5)

def sum_with_for(min, max)
  value = 0
  for integer in (min..max)
  value = value + integer
  end
  value
  # CONSTRAINT: you should use a for..end structure
end
puts sum_with_for(1,5)


def sum_recursive(min, max)
  if min > max
  return 0
  else
  value = min + (sum_recursive(min+1,max))
  end
end
puts sum_recursive(1,5)

