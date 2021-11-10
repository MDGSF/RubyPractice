# include 可以帮助我们突破继承的限制，通过模块扩展类的功能
# extend 可以帮助我们跨过类，直接通过模块扩展对象的功能

module Edition
  def edition(n)
    "#{self}第#{n}版"
  end
end

str = "Ruby基础教程"
str.extend(Edition)   # 将模块 mix-in 进对象
p str.edition(5)
