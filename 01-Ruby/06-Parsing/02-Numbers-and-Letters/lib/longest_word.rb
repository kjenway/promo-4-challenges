require 'open-uri'
require 'json'


def compute_score(attempt, time_taken)
  (time_taken > 60) ? 0 : 3 / time_taken.to_i + attempt.size
end

# open(api_url) do

def generate_grid(grid_size)
  origin = ('A'..'Z').to_a
  grid = []
  grid_size.times do
    grid << origin.sample
  end
  return grid
end

def get_translation(word)
  api_url = open("http://api.wordreference.com/0.8/80143/json/enfr/#{word.upcase}")
  word = JSON.parse(api_url.read)
  word['term0']["PrincipalTranslations"]["0"]["FirstTranslation"]["term"] unless word['Error']
end

def run_game(attempt, grid, start_time, end_time)
  # TODO: runs the game and return detailed hash of result
  time_taken = end_time - start_time
  result = { score: 0, time: time_taken.to_i }
  if attempt.upcase.chars.all? { |x| grid.include? x }
    if get_translation(attempt)
      result[:message] = "well done"
      result[:translation] = get_translation(attempt)
      result[:score] = compute_score(attempt, time_taken)
    else
      result[:message] = "not an english word"
      # result[:translation] = "No translation"
    end
  else
    result[:message] = "not in the grid"
    result[:translation] = "No translation"
  end
  result
end

p run_game("wagon", %w(W G G Z O N A L), Time.now, Time.now + 1.0)

# run_game("ye", ["y","e","s"], Time.now, Time.now )

# puts "Your word: #{attempt}"
# puts "Time Taken to answer: #{result[:time]}"
# puts "Translation: #{result[:translation]}"
# puts "Your score: #{result[:score]}"
# puts "Message: #{result[:message]}"

# def run_game(attempt, grid, start_time, end_time)
#   api_url = 'http://api.wordreference.com/0.8/80143/json/enfr/apple'

#   # TODO: runs the game and return detailed hash of result
#   if attempt.all? {|x| grid.include? x}
#     open(api_url) do |data|
#     translation = JSON.parse(data.read)
#     if translation["term0"]["PrincipalTranslations"]["0"]["OriginalTerm"]["term"] == attempt