puts "==> What is the bill?"
bill = gets.chomp.to_f

puts "==> What is the tip percentage?"
whole_percentage = gets.chomp.to_f

tip_percentage = whole_percentage / 100
tip_amount = (tip_percentage * bill)
total = (tip_amount + bill)

tip_amount_2 = sprintf('%.2f', tip_amount)
total_2 = sprintf('%.2f', total)

puts "The tip is $#{tip_amount_2}."
puts "The total is $#{total_2}."

