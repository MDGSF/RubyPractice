=begin
《Ruby基础教程（第5版）》示例
注释的使用示例
2006/06/16 创建
2006/07/01 追加一部分注释
2015/10/01 第5版更新
=end
x = 10 # 宽
y = 20 # 长
z = 30 # 高
area = (x*y + y*z + z*x) * 2
volume = x * y * z

# print "表面积=", area, "\n"
# print "体积=", volume, "\n"

puts "表面积=#{area}"
puts "体积=#{volume}"
