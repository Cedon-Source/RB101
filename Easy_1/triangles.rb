# The solution in the course states that "spaces"
# must be taken into consideration.  In this solution I 
# simply right aligned.  This might not fly if reviewed.

def triangle(amount)
  i = 0
  while i < (amount + 1)
    puts ('*' * i).rjust(amount)
    i += 1
  end
end

triangle(5)
triangle(15)
