class HelloWorld
  def initialize(myname = "Ruby")
    @name = myname
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end

  def hello
    puts "Hello, world. I am #{@name}."
  end
end

bob = HelloWorld.new("Bob")
bob.hello
p bob.name
bob.name = "Robert"
bob.hello
