# You can use a global variable, DB, built as is:

class Post
  # TODO: implement some reader and/or writers
  attr_accessor :url, :title
  attr_reader :id, :date, :votes

  def initialize(options = {})
    # TODO: initialize instance variables from the hash options.
    @id = options[:id]
    @title = options[:title]
    @url = options[:url]
    @date = options[:date] || Time.now
    @votes = options[:votes] || 0
  end

  def save
    if @id.nil?
      time_as_integer = @date.to_i
      DB.execute("INSERT INTO posts (title, url, date, votes)
      VALUES ('#{@title}', '#{@url}', '#{time_as_integer}', '#{@votes}');")
      @id = DB.last_insert_row_id
    else
      DB.execute("UPDATE posts SET title = '#{@title}', url = '#{@url}',
        votes = '#{votes}' WHERE id = #{@id};")
    end
  end

  def upvote
    @votes += 1
  end

  def self.all
    db_result = DB.execute("SELECT * FROM posts;")
    db_result.map do |post|
      Post.new(
        id: post[0], title: post[1], url: post[2], date: Time.at(post[3]),
        votes: post[4])
    end
  end

  def self.find(id)
    # Posts.new(DB.execute("SELECT * FROM posts WHERE id = #{id};").flatten(0))
    db_result = DB.execute("SELECT * FROM posts WHERE id = #{id};").first
    if db_result.nil?
      return nil
    else
      Post.new(id: db_result[0], title: db_result[1], url: db_result[2],
        date: Time.at(db_result[3]), votes: db_result[4])
    end
  end

  def destroy
    DB.execute("DELETE FROM posts
      WHERE id = '#{id}';")
  end
end

# require 'sqlite3'
# DB = SQLite3::Database.new("db/posts.db")

# post = Post.new(title: "Le Wagon", url: "http://www.lewagon.org")
# post.save