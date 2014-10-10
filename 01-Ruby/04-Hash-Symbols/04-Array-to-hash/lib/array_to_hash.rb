
exemple = ["a","b","c","d","e" ]

def array_to_hash(array)
  #TODO: implement the method :)
  indexes = (0...array.count)
  if block_given?
    indexes2 = 0
    indexes.map {|index| yield(index)}
  end
    hash = indexes.zip(array).to_h
end

p array_to_hash(exemple) {|index| "key#{index + 1}"}
