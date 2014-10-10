
exemple = ["a","b","c","d","e" ]

def array_to_hash(array)
  #TODO: implement the method :)
  indexes = (0...array.count)
  if block_given?
    indexes2 = []
    indexes.each {|index| indexes2 << yield(index)}
    return indexes2.zip(array).to_h
  else
    hash = indexes.zip(array).to_h
  end
end

p array_to_hash(exemple) {|index| "key#{index + 1}"}
