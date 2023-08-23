class FireWall
  
  def source(source)
    @source = source

    self
  end

  def destination(destination)
    @destination = destination

    self
  end

  def protocol(protocol)
    @protocol = protocol

    self
  end

  def enable
    puts("activated on: source: #{ @source }, destination: #{ @destination }, protocol: #{ @protocol }")
  end
end

fw = FireWall.new

fw
  .destination("google.com")
  .source("localhost")
  .protocol("http")
  .enable
