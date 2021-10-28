# p012mtdstack.rb
# Sequence in which the parameters put on to the stack is left to right

def mtd(a=99, b=a+1)
  [a, b]
end

puts mtd
