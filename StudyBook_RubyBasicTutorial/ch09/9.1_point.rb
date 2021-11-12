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
end

point0 = Point.new(3, 6)
point1 = Point.new(1, 8)

p point0
p point1
p point0 + point1
p point0 - point1
