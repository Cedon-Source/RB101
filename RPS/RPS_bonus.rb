VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

# Win conditions set out in a rather long, complicated way.
def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lost!")
  else
    prompt("It's a tie!")
  end
end

# Keeps score of wins in a session.
 def score_calc(player, computer, player_score, computer_score)
   if win?(player, computer)
     player_score += 1
   elsif win?(computer, player)
     computer_score += 1
   end
   [player_score, computer_score]
 end

def winner(player_score, computer_score)
  if player_score == 3
    Kernel.puts("You are the grand winner!")
  elsif computer_score == 3
    Kernel.puts("The computer is the grand winner!")
  end
end

# Actual engine of the program, ensures play choice is acceptable,
# randomly selects a competing choice, and runs it through the methods
# above.  Breaks if the player no longer wants to play or if either
# the computer or player win 3 times in a session. 
player_score = 0
computer_score = 0
loop do
  choice = ''
  
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_result(choice, computer_choice)
  player_score, computer_score = score_calc(choice, computer_choice, player_score, computer_score)
  Kernel.puts winner(player_score, computer_score)
  Kernel.puts ("SCORE: You #{player_score}; Computer #{computer_score}")

  break if player_score == 3 || computer_score == 3
  prompt("Want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing, goodbye!")


# winning_condition = {
#   'rock': ['scissors', 'lizard'],
#   'paper': ['rock', 'spock'],
#   'scissors': ['paper', 'lizard'],
#   'lizard': ['spock', 'paper'],
#   'spock': ['scissors', 'rock']
# }
#
# def winning_condition()