
class Color
  def initialize(args={})
    @object = args[:object]
  end

  def rgb
    raise NotImplementedError, 'called abstraction method: rgb'
  end
end

class Blue < Color
  def rgb
    '#000FF'
  end
end

class Green < Color
  def rgb
    '#00FF00'
  end
end

class Red < Color
end

puts Blue.new(object: 'car').rgb
puts Green.new(object: 'car').rgb
puts Red.new(object: 'car').rgb
