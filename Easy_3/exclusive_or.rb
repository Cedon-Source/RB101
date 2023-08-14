def xor?(first, second)
  return true if first && !second 
  return true if second && !first
  false
end

xor?(5.even?, 4.even?)
xor?(5.even?, 4.odd?)