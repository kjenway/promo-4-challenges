require_relative "../views/post_view.rb"

class PostsController
  def initialize
    @post_view = PostView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    # TODO: give them to the view to be printed
    posts = Post.all
    @post_view.display_array(posts)
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    name = @post_view.asks("Enter the title of your post:")
    url = @post_view.asks("Enter the url of your post:")
    post = Post.new({
      name: name,
      url: url
      })
    post.save
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    id = @post_view.asks("Enter the id of the post you wish to modify:")
    name = @post_view.asks("Enter tne new name:")
    url = @post_view.asks("Enter the new url:")
    post = Post.find(id)
    post.name = name
    post.url = url
    post.save
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
    id = @post_view.asks("Enter the id of the post you wish to delete:")
    post = Post.find(id)
    post.destroy
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    id = @post_view.asks("Enter the id of the post you wish to vote for:")
    post = Post.find(id)
    post.votes = post.votes || 0
    post.votes += 1
    post.save
  end
end