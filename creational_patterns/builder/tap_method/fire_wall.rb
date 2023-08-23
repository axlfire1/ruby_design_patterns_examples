class FireWall
  attr_accessor :source, :destination, :protocol
end

fw_obj = FireWall.new.tap do |fw|
  fw.source = 'google'
  fw.destination = 'localhost'
  fw.protocol = 'http'
end

puts fw_obj.source
puts fw_obj.destination
puts fw_obj.protocol
