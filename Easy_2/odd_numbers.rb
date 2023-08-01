# When you pass a symbol to certain methods in Ruby, 
# like select, map, each, etc., Ruby will automatically 
# convert the symbol to a proc and use it as the block 
# for the method call. So, &:odd? is equivalent to 
# writing { |element| element.odd? }.

array = (1..99).to_a
puts array.select(&:odd?)