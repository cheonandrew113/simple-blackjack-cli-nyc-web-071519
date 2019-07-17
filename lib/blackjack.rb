def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..10)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp.strip
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  
end

def initial_round
  round_one = deal_card + deal_card
  display_card_total(round_one)
  return round_one
end	

def hit?(card_total)
    prompt_user
    user_input = get_user_input
    while user_input != "h" && user_input != "s"
      invalid_command
      prompt_user
      user_input = get_user_input
    end
    if user_input == "h"
      card_total += deal_card
    end
    return card_total
  end

def invalid_command
  puts "Please enter a valid command"
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
  total = hit?(total)
  display_card_total(total)
  end
  end_game(total)

end	
    
