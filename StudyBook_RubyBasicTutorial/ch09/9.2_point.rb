class Point
  attr_accessor :x, :y

  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def inspect # 用 p 方法显示 (x,y)
    "(#{x}, #{y})"
  end

  # x, y 分别进行加法运算
  def +(other)
    self.class.new(x + other.x, y + other.y)
  end

  # x, y 分别进行减法运算
  def -(other)
    self.class.new(x - other.x, y - other.y)
  end

  # 一元运算符：+
  def +@
    dup # 返回自己的副本
  end

  # 一元运算符：-
  def -@
    self.class.new(-x, -y)
  end

  # 一元运算符：~
  def ~@
    self.class.new(-y, x) # 使坐标翻转90度
  end
end

point = Point.new(3, 6)
p +point
p -point
p ~point
