def mail_joke(email)
  if email.match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i).nil?
    fail ArgumentError, "This is not an accepted email format, it must be a string"
  else
    provider = email.match(/@(\w+.+)$/)[1].downcase
    name = email.match(/^(\w+.+)@/)[1].downcase.gsub(".", " ")
    if provider == "lewagon.org"
      return "Well done #{name}, you're skilled and capable"
    elsif provider == "gmail.com"
      return "#{name}, you're an average but modern person"
    elsif provider == "live.com"
      return "#{name}, aren't you born before 1973?"
    else
      return "Sorry #{name}, we don't know how to judge '#{provider}'"
    end
  end
end