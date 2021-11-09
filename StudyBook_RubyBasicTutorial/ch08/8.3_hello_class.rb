class HelloWorld
  attr_accessor :name

  def initialize(myname = "Ruby")
    @name = myname
  end

  def greet
    puts "Hi, I am #{self.name}."
  end
end

bob = HelloWorld.new("Bob")
bob.greet
