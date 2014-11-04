require 'sinatra'
require "sinatra/reloader" if development?
require_relative "config/application.rb"

set :views, proc { File.join(root, "app/views") }





get '/' do
  # TODO: fetch posts from database.
  #       to pass them to the view, store them in an instance variable
  @posts = Post.all.order(votes: :desc)

  erb :posts  # The rendered HTML is in app/views/posts.erb
end


post '/' do
  puts "Le nom est #{params[:name]}"
  puts "L'url est #{params[:url]}"
  Post.create(
    name: params[:name],
    url: params[:url])
  redirect('/')
end

get '/post/:post_id/voteup' do
  id = params [post_id]
  post = Post.find(id)
  post.vote += 1
  post.save
  redirect('/')
end