def anagrams?(a_string, another_string)
  a_string = a_string.gsub(/[\W]/, "").downcase
  another_string = another_string.gsub(/[\W]/, "").downcase
  if a_string.chars.sort.join == another_string.chars.sort.join
    return true
  else
    return false
  end
end

def anagrams_on_steroids?(a_string, another_string)
  hash1 = {}
  a_string.gsub(/[\W]/, "").downcase.chars.each { |i| hash1[i] = a_string.count(i) }
  hash2 = {}
  another_string.gsub(/[\W]/, "").downcase.chars.each { |i| hash2[i] = a_string.count(i) }
  if hash1 == hash2
    return true
  else
    return false
  end
end
