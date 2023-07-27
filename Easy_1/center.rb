def center_of(string)
  array = string.chars
  length = array.length
  
  if length % 2 == 0
    puts array.fetch(length / 2)
    puts array.fetch((length / 2) - 1)
  else
    puts array.fetch(length / 2)
  end
end

center_of("Launch")