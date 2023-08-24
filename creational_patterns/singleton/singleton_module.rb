require 'singleton'

class SingletonModule
  include Singleton

  attr_accessor :name
end

name_1 =  SingletonModule.instance
name_1.name = 'johon'
puts name_1.name

name_2 =  SingletonModule.instance
name_2.name = 'xxx'
puts name_2.name

# SingletonModule.new
