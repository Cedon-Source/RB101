number = ''
action = ''
puts ">> Please enter an integer greater than 0:"

loop do
  number = gets.chomp.to_i
  if number >= 1
    break
  else
    puts "That is not an integer greater than 0.  Please try again."
  end
end

puts ">> Enter 's' to compute sum, 'p' to compute the product."

loop do
  action = gets.chomp.downcase
  if action == 's' || 'p'
    break
  else
    puts "Please enter 's' or 'p'."
  end
end

if action == 's'
  add = []
  1.upto(number) { |i| add << i }
  puts add.sum
else
  multiply = []
  1.upto(number) { |i| multiply << i }
  puts multiply.inject(:*)
end
