# %w 是一个用于生成以各单词为元素的数组的字面量
ary = %w(
Ruby is a open source programming language with a focus
on simplicity and productivity. It has as elegant syntax
that is natural to read and easy to write
)

call_num = 0
sorted = ary.sort do |a, b|
  call_num += 1
  a.length <=> b.length
end

puts "排序结果#{sorted}"
puts "数组的元素数量#{ary.length}"
puts "调用块的次数#{call_num}"
