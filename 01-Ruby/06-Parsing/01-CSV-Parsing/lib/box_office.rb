# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)
  movies = []
  movies_of_year = []
  CSV.foreach(file_name) do |row|
    movies << { name: row[0], year: row[1].to_i, earnings: row[2].to_i }
  end
  movies.each do|movie_hash|
    if movie_hash[:year] < max_year
      movies_of_year << movie_hash
    end
  end
  movies_of_year.sort do |x, y|
    x[:earnings] <=> y[:earnings]
  end
  movies_of_year.take(number)
end
