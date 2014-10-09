require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  "Your score is #{player_score}, bank is #{bank_score}!"
end

def end_game_message(player_score, bank_score)
  if player_score > 21
    return "you lose..."
  elsif player_score == 21
    return "you just pull a Black Jack! You win :)"
  elsif player_score > bank_score
    return "You win!"
  else
    return "you lose..."
  end
  # TODO: return (not print!) a message telling if the user won or lost.
end


def play_game
  bank_score = pick_bank_score
  player_score = 0
  answer = 'y'
  while answer == "y" || answer == "yes"
    player_score += pick_player_card
    puts "Card? (type y or yes for a new card)"
    answer =  gets.chomp
    puts state_of_the_game(player_score, bank_score)
  end
    end_game_message
end


  # TODO: make the user play from terminal in a while loop that will stop
  #       when the user will not be asking for  a new card
