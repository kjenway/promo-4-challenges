require_relative "../config/application"
require_relative "../app/models/post"
require "json"
require "rest-client"

# TODO: Write a seed to insert 100 posts in the database fetched from the Hacker News API.
response = RestClient.get 'https://hacker-news.firebaseio.com/v0/topstories.json'
ids = JSON.parse(response)

ids[0..9].each do |id|
  url = "https://hacker-news.firebaseio.com/v0/item/#{id}.json"
  details = RestClient.get url
  hash = JSON.parse(details)
  post = Post.new(name: hash["title"], url: hash ["url"], votes: hash["votes"])
  post.save
end
