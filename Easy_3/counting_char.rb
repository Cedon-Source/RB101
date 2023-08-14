
def prompt(message)
  Kernel.puts("==> #{message}")
end

prompt("Please write a work or multiple words: ")
response = Kernel.gets().chomp().to_str

total_chars = response.size
blank_chars = response.count(" ")
unblank_chars = total_chars - blank_chars

prompt("There are #{unblank_chars} in '#{response}'")

# This is pretty good too.
# print 'Please write word or multiple words: '
# input = gets.chomp
# number_of_characters = input.delete(' ').size
# puts "There are #{number_of_characters} characters in \"#{input}\"."