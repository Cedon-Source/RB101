time = Time.new
current_year = time.year

puts "==> What is your current age?"
current_age = gets.chomp.to_i

puts "==> At what age would you like to retire?"
future_age = gets.chomp.to_i

difference_of_age = future_age - current_age
future_year = current_year + difference_of_age

puts "It is #{current_year}.  You will retire in #{future_year}."
puts "You have only #{difference_of_age} years of work to go!"
