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
  #TODO: implement the improved method
 # a_string = a_string.gsub(/[\W]/, "").downcase
 # another_string = another_string.gsub(/[\W]/, "").downcase

 #a_string{}
end
