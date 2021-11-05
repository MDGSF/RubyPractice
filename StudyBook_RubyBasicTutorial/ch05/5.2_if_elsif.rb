# Ruby 会认为 false 与 nil 代表假，除此以外的所有值都代表真。
# 返回真假值的方法都要以 ? 结尾。

a = 10
b = 20
if a > b
  puts "a > b"
elsif a < b
  puts "a < b"
else
  puts "a == b"
end

