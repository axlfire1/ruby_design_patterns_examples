ConstantSingleton = Struct.new(:name)

MY_SINGLETON = ConstantSingleton.new('john')

puts MY_SINGLETON.name
