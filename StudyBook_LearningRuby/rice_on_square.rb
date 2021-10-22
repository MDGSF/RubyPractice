rice_one_square = 1
64.times do |square|
  puts "On square #{square + 1} are #{rice_one_square} grain(s)"
  rice_one_square *= 2
end
