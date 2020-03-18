class Triangle 
  attr_accessor :a, :b, :c 
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end
  
  def kind 
    # Instance method that returns the triangle's type as a symbol
    # There are three types: 
    #          * equilateral (all sides are equal)
    #          * isosceles (two of the three sides are equal)
    #          * scalene (no sides are equal)

    
    
    
  end 
  
  class TriangleError < StandardError 
    # triangle error code 
  end
end