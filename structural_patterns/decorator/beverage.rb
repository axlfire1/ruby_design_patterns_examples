module Beverage
  def discount
    puts('with desc it costs 20$')
  end

  def cost
    puts('default value is: 30')
    super
  end
end