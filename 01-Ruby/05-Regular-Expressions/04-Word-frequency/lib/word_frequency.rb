def most_common_words(file_name, stop_words_file_name, number_of_word)
  # TODO: return hash of occurences of number_of_word most frequent words
  hash1 = Hash.new(0)
  text = []
  stopwords = []
  File.open(file_name, "r").each_line do |line1|
    text << line1.split(/\W+/)
    text.flatten!
  end
  File.open(stop_words_file_name, "r").each_line do |line2|
    stopwords << line2.split(/\W+/)
    stopwords.flatten!
  end
  text_without_stopwords = text - stopwords
  text_without_stopwords.each do |word|
    hash1[word] += 1
  end
  result = hash1.sort_by { |word, num| num }.to_h
  result.max_by{|k,v| v}
end

p most_common_words("source-text.txt","stop_words.txt",2)
