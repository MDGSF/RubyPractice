module MyModule
  # 共通的方法
end

class MyClass1
  include MyModule
  # MyClass1中独有的方法
end

class MyClass2
  include MyModule
  # MyClass2中独有的方法
end

