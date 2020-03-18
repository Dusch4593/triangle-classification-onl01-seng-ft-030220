class Triangle 
  attr_accessor :a, :b, :c 
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end
  
  def kind 
    =begin 
    Instance method that returns the triangle's type as a symbol.
    
    
  end 
  
  class TriangleError < StandardError 
    # triangle error code 
  end
end