class Triangle 
  attr_accessor :a, :b, :c 
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end
  

    # Triangle.kind - Instance method that returns the triangle's type as a symbol
    
    # There are three types: 
    #          * equilateral (all sides are equal)
    #          * isosceles (two of the three sides are equal)
    #          * scalene (no sides are equal)
    #
    # Something to keep in mind is triangle inequality: 
    # the sum of any two sides is always greater than the third 
    
    # If a given Triangle object doesn't satisfy the principle of inequality is not a valid triangle. Therefore, it should raise a custom error called TriangleError (derivative of Standard Error). 
    
    # Also, a triangle is not valid if any of the three sides are less than or equal to zero. Therefore, that should also raise a TriangleError. 

    
  def kind 
    
    if(a <= 0 || b <= 0 || c <= 0)
      raise TriangleError 
    else 
      if(self.triangle_inequality?)
        
      else 
        raise TriangleError
    end
    
  end 
  
  class TriangleError < StandardError 
    # triangle error code 
  end
  
  def triangle_inequality? 
    if(a + b > c || a + c > b || b + c > a)
      true 
    else 
       false 
    end
  end
end