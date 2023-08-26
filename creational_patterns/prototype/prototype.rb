# The example class that has cloning ability. We'll see how the values of field
# with different types will be cloned.
class Prototype
  attr_accessor :primitive, :component, :circular_reference

  def initialize
    @primitive = nil
    @component = nil
    @circular_reference = nil
  end

  # @return [Prototype]
  def clone
    @component = deep_copy(@component)

    # Cloning an object that has a nested object with backreference requires
    # special treatment. After the cloning is completed, the nested object
    # should point to the cloned object, instead of the original object.
    @circular_reference = deep_copy(@circular_reference)
    @circular_reference.prototype = self
    deep_copy(self)
  end

  # deep_copy is the usual Marshalling hack to make a deep copy. But it's rather
  # slow and inefficient, therefore, in real applications, use a special gem
  private def deep_copy(object)
    # The marshaling library converts collections of Ruby objects into a byte stream,
    # allowing them to be stored outside the currently active script. This data may 
    # subsequently be read and the original objects reconstituted.
    Marshal.load(Marshal.dump(object))
  end
end
