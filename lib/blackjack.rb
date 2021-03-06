require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(num)
   puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card 
  display_card_total(total)
  total
end

def hit?(num)
  prompt_user
  user_input = get_user_input
    if user_input == "s" 
      num
    elsif user_input == "h" 
      num += deal_card 
    else 
      invalid_command
      get_user_input
      prompt_user
    end
end

def invalid_command
  puts  "Please enter a valid command"
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



    
