def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  return card_total
end

def prompt_user
  puts "Type 'h''to hit 's' to stay"
  prompt_user
  get_user_input
end

def get_user_input
  return gets.chomp
end

def end_game
  return card_total
  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal_card
  display_card_total
  deal_card
end

def hit?(number)
prompt_user
get_user_input
if answer == "h" 
deal_card
#increment the player's card total by whatever number is returned by deal_card
display_card_total
elsif answer == "s"
display_card_total
else 
invalid_command
end
end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
