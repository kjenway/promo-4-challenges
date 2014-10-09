# Encoding: utf-8

# def louchebem_word(word)
#   suffixe = %w(em é ji oc ic uche ès)
#   if word.size == 1 && word
#       nil
#   else
#     until %w(a e i o u y A E I O U Y).include? (word[0])
#       word << word[0]
#       word.reverse!.chop!.reverse!
#     end
#   word.insert(0, 'l')
#   word << suffixe[rand(7)]
#   end
# word
# end

# def louchebemize(sentence)
#   # TODO: implement your louchebem translator
#   sentence_word = sentence.split(/\W+/)
#   sentence_word = sentence_word.each { |word| louchebem_word(word) }
#   p sentence_word.join(" ")
# end

# louchebemize("Le chat, est mort.")








def louchebem_word(word)
  suffixe = %w(em é ji oc ic uche ès)
  if word.size == 1
    nil
  else
    until %w(a e i o u y A E I O U Y).include? (word[0])
      word << word[0]
      word.reverse!.chop!.reverse!
    end
  word.insert(0, 'l')
  word << suffixe[rand(7)]
  end
word
end

def louchebemize(sentence)
  # TODO: implement your louchebem translator
  sentence_word = sentence.split(/\W+/)
  sentence_word = sentence_word.each { |word| louchebem_word(word)}
  p sentence_word.join(" ")
end

louchebemize("Le chat, est mort.")