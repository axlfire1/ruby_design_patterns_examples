class AttrAccessorExample
  attr_accessor :name

  def initialize
    @name = 2
  end
end

obj = AttrAccessorExample.new
puts obj.name

# it can be changed once the object is created
obj.name = "hola"
puts obj.name

# -> 2
# -> hola
