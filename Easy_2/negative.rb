def return_negative(num)
  if num.positive?
    puts num * -1
  else
    puts num
  end
end 

puts return_negative(5)