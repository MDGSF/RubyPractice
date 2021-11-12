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

  def [](index)
    case index
    when 0
      x
    when 1
      y
    else
      raise ArgumentError, "out of range `#{index}`"
    end
  end

  def []=(index, val)
    case index
    when 0
      self.x = val
    when 1
      self.y = val
    else
      raise ArgumentError, "out of range `#{index}`"
    end
  end
end

point = Point.new(3, 6)
p point[0]
p point[1] = 2
p point[1]
p point[2]
