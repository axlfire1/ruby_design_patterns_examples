require_relative 'beverage'

class Coffee
  def cost
    puts('the cost 50$')
  end
end

c_obj = Coffee.new
c_obj.cost

c_obj_decorator = Coffee.new
c_obj_decorator.extend(Beverage)
c_obj_decorator.cost
c_obj_decorator.discount