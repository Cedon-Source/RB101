def prompt(message)
  Kernel.puts("==> #{message}")
end

def entry
  Kernel.gets().chomp().to_i
end

prompt("Enter the first number:")
first = entry

prompt("Enter the second number:")
second = entry

addition = first + second
subtraction = first - second
multiplication = first * second
division = first / second
remainder = first % second
power = first ** second

prompt("#{first} + #{second} = #{addition}")
prompt("#{first} - #{second} = #{subtraction}")
prompt("#{first} * #{second} = #{multiplication}")
prompt("#{first} / #{second} = #{division}")
prompt("#{first} % #{second} = #{remainder}")
prompt("#{first} ** #{second} = #{power}")