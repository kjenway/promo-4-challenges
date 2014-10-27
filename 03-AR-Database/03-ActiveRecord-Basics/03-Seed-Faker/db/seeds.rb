require "faker"

# TODO: Write a seed to insert 100 posts in the database
100.times do
  post = Post.new(
    name: Faker::Company.name,
    url: 03 Faker::Internet.url,
    votes: (0..50).to_a.sample
  )
  post.save
end