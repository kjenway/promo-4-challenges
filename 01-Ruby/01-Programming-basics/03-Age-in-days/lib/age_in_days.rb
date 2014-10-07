# This "require" line loads the contents of the 'date' file from the standard
# Ruby library, giving you access to the Date class.
require 'date'


def age_in_days(day, month, year)
today = Date.today
datebirth = Date.new(year, month, day)
days = today - datebirth
days.class
days.to_i
end

puts age_in_days(12,6,1982)
