def total(from, to)
  result = 0
  from.upto(to) do |num|
    if block_given?
      result += yield(num)
    else
      result += num
    end
  end
  return result
end

n = total(1, 10) do |num|
  if num == 5
    break
  end
  num
end
p n
