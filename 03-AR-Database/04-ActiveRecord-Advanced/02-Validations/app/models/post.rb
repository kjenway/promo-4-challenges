class Post < ActiveRecord::Base
  belongs_to :user
  validates :name, length: { minimum: 5 }
  validates :url, :user, :name, presence: true
  validates :url, format: {
    with: /\Ahttps?\:\/\/(?:www\.|)?\w+\.\w{2,3}(?:\/\w+)?/,
    message: "invalid url"
  }
  validates :name, uniqueness: { case_sensitive: false }
  # TODO: Add some validation
end