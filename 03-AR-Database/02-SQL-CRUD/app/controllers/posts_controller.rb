require_relative ("../models/post")
require_relative ("../views/post_view")

class PostsController
  def initialize
    @view = PostView.new
    @post = Post.new
  end

  ################################################################
  # BEWARE: you MUST not use the global variable DB in this file #
  ################################################################

  def index
    # TODO: implement listing all posts
    @post.all.flatten
  end

  def create
    # TODO: implement creating a new post
    Post.new
  end

  def update
    # TODO: implement updating an existing post

  end

  def destroy
    # TODO: implement destroying a post
  end

  def upvote
    # TODO: implement upvoting a post
  end
end