def stringy(x)
  result = ""
  i = 0
  while i < x
    if i.even?
      result += "1"
    else
      result += "0"
    end
    i += 1
  end
  
  return result
end

puts stringy(4)
puts stringy(23)

