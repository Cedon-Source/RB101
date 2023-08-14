result = 0

def prompt(message)
  Kernel.puts("=> #{message}")
end

def enter_here()
  Kernel.gets().chomp().to_i
end

prompt("Enter the 1st number:")
first = enter_here

prompt("Enter the 2nd number:")
second = enter_here

prompt("Enter the 3rd number:")
third = enter_here

prompt("Enter the 4th number:")
forth = enter_here

prompt("Enter the 5th number:")
fifth = enter_here

prompt("Enter the last number:")
last = enter_here

numbers = [first, second, third, forth, fifth]

numbers.each do |num| 
  result += 1 if last.equal?num
end

result > 0 ? prompt("The number #{last} does appear in #{numbers}.") :
prompt("The number #{last} does not appear in #{numbers}.")

# This is a bit more readable and uses a more direct method:
# if numbers.include? last_number
# puts "The number #{last_number} appears in #{numbers}."
# else
#  puts "The number #{last_number} does not appear in #{numbers}."
# end
