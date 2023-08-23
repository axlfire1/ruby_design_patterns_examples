class FireWall
  attr_accessor :source, :destination, :protocol

  def initialize(source:, destination:, protocol: 'tcp')
    @source = source
    @destination = destination
    @protocol = protocol
  end
end

fw = FireWall.new(destination: 'localhost', source: 'xxx.com')

puts fw.source
puts fw.destination
puts fw.protocol
