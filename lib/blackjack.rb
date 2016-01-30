require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand 1..11
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user

  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input

  input = gets.chomp
  # return input
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return  sum

end

def hit?(cards)
  # code hit? here
  prompt_user
  draw = get_user_input
  draw

  if draw == "s"
    return cards
  elsif draw == "h"
    return deal_card + cards

  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################



def runner
  welcome
  cards = initial_round
  cards
    until cards >=
     21
      cards =hit?(cards)
      display_card_total(cards)
    end
  end_game(cards)
end