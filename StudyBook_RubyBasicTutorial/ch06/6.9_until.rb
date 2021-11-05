=begin
until 语句的结构与while 语句完全一样，只是条件判断刚好相反，
不满足条件时才执行循环处理。换句话说，while 语句是一直执行循环处理，
直到条件不成立为止；until 语句是一直执行循环处理，直到条件成立为止。
=end

sum = 0
i = 1
until sum >= 50
  sum += i
  i += 1
end
puts sum
