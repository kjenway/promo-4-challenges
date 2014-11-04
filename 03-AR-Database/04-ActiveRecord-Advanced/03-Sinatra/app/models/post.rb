class Post < ActiveRecord::Base
  belongs_to :user

  # TODO: Add some validation
  def upvote
    @vote +=1
  end

end