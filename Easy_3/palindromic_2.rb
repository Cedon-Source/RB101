
def palindrome?(entry)
  entry.downcase!
  entry.delete!("^a-z0-9")
  entry == entry.reverse
end

p palindrome?("Madam")
p palindrome?("m a d am")
p palindrome?("madam, I'm Adam")