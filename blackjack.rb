require 'pry'

# total card count
# method to hit
# method to stay
# method that will check if you won or not
# runner method
# deal method

def runner
  total = 0

  puts "Welcome to Blackjack!"

  # initial deal
  2.times { total = deal(total).last }

  # ask to hit or stay
  answer = hit_or_stay(total)
  until answer == "s"
    last_card, total = deal(total)
    puts "You decided to hit and got dealt a #{last_card}."
    total < 21 ? answer = hit_or_stay(total) : break
  end

  result(total)
end

def deal(total)
  new_card = rand(1..10) # make special method that will let a 1 be valued at 1 or 11, depending on which is more beneficial
  total += new_card
  [new_card, total]
end

def hit_or_stay(total)
  puts "Your total card value is #{total}. Would you like to hit or stay? Type h/s."
  gets.chomp
end

def result(total)
  puts "Your total is #{total}."

  case
  when total > 21
    puts "Sorry, you went bust!"
  when total < 21
    puts "You didn't go over 21! Little victories."
  when total == 21
    puts "BLACKJACK!!"
  end

  runner if play_again?
end

def play_again?
  puts "Would you like to play again? Type y/n."
  answer = gets.chomp
  answer == "y" ? true : false
end

runner
