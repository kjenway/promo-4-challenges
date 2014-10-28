# TODO: Write a seed
require 'faker'

5.times do
  user = User.new(
      username: Faker::Internet.user_name,
      email: Faker::Internet.email
    )
  user.save
  (5..10).to_a.sample.times do
    user.posts.create(name: Faker::Name.name, url: Faker::Internet.url, votes: (0..10).to_a.sample)
  end
end
