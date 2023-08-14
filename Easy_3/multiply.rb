
def prompt(message)
  Kernel.puts("==> #{message}")
end

def multiply(first, second)
  first * second
end

prompt("Please enter a number: ")
first_num = Kernel.gets().chomp().to_i

prompt("Please enter a second number:")
second_num = Kernel.gets().chomp().to_i

multiply(first_num, second_num)