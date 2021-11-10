module ClassMethods
  def cmethod
    "class method"
  end
end

module InstanceMethods
  def imethod
    "instance method"
  end
end

class MyClass
  extend ClassMethods # 使用 extend 定义类方法
  include InstanceMethods # 使用 include 定义实例方法
end

p MyClass.cmethod
p MyClass.new.imethod

