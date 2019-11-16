def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  x = rand(1..11)
  p x
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets()
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  a = deal_card
  b = deal_card
  x = a + b 
  p display_card_total(x)
  x
end

def hit?(card_total)
  prompt_user
  return_value = get_user_input
  if return_value == 'h'
    card_total += deal_card
    display_card_total(card_total)
  elsif return_value != 's'
    invalid_command
    hit?(card_total)
  end 
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  c_total = hit?(initial_round)
  until c_total > 21 do
    hit?(c_total)
  end
end_game(c_total)
end
    
