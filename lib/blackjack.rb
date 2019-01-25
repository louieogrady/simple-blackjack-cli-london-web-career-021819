def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == "h" 
    number += deal_card 
    elsif input == "s"
    return number
    else 
      invalid_command
      end
end


def invalid_command
  puts "Please enter a valid command"
  prompt user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  until hand > 21 do
  hand = hit?(hand)
  display_card_total(hand)
  end_game(hand)
  end
end

