
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

# puts Blue.new(object: 'car').rgb
# puts Green.new(object: 'car').rgb
# puts Red.new(object: 'car').rgb

require 'rspec'

RSpec.describe Red do
  subject { described_class.new(object: 'car') }

  it 'raises an error' do
    expect do
      subject.rgb
    end.to raise_error(NotImplementedError, 'called abstraction method: rgb')
  end
end
