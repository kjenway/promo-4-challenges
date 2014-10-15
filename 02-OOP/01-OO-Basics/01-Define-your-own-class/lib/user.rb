# user.rb
class User
  attr_accessor :profession

  def initialize(name, gender, age, profession)
    @name = name
    @gender = gender
    @age = age
    @profession = profession
    end

  def one_more_year
    @age +=1
  end
end

user1 = User.new("Katy", "female", 28, "engineer")
user2 = User.new("Mark", "male", 35, "teacher")
user3 = User.new("Jim", "male", 18, "student")

user2.profession = "university teacher"