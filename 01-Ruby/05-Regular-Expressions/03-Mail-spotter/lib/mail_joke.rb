# Encoding: utf-8

def mail_joke(email)
  # TODO: Return (not print!) a joke suited to the email provided
  if email.class != String
    raise ArgumentError.new("This is not an accepted email format, it must be a string")
  elsif email.match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
    provider = email.match(/@(\w+)/)[1].downcase
    provider_complete = email.match(/@(\w+.+)$/)[1].downcase
    name = email.match(/^(\w+.+)@/)[1].downcase.gsub(".", " ")
    if provider == "lewagon"
      return "Well done #{name}, you're skilled and capable"
    elsif provider == "gmail"
      return "#{name}, you're an average but modern person"
    elsif provider == "live"
      return "#{name}, aren't you born before 1973?"
    else
      return "Sorry #{name}, we don't know how to judge '#{provider_complete}'"
    end
  else
    raise ArgumentError.new("This is not an accepted email format, please check your entry")
  end
end