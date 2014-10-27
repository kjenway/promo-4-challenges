class PostView
  # TODO: implement some methods here when controller
  # needs to `puts` or `gets`
  def display(string)
    puts string
  end

  def display_array(array)
    array.each do |element|
      puts "id:#{element.id} - name:#{element.name} - url:#{element.url} - votes:#{element.votes}"
    end
  end

  def asks(question)
    puts question
    puts "> "
    gets.chomp
  end
end