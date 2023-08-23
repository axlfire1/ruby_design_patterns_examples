require_relative 'beverage'

class Coffee
  def cost
    20
  end
end

c_obj = Coffee.new
puts "cost of coffe is #{c_obj.cost}"

c_obj_decorator = Coffee.new

# add decorator to just created class instance
c_obj_decorator.extend(Beverage)
puts "cost of coffe is #{c_obj_decorator.cost}"
