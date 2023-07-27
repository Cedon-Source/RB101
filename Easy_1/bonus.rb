def calculate_bonus(salary, bonus)
  if bonus == true
    puts salary / 2
  else
    puts '0'
  end
end

calculate_bonus(2800, true)
calculate_bonus(1000,false)
calculate_bonus(50000, true)