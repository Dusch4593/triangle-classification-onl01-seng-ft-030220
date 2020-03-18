require 'pry'

class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3, :type
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  
  
  def kind 
    if(self.triangle_inequality?)
      binding.pry
      if(self.equilateral?)
        @type = :equilateral
      end
      
      if(self.isosceles?)
        @type = :isosceles 
      end
      
      if(self.scalene?)
        @type = :scalene 
      end
    else 
      if(length1 <= 0 || length2 <= 0 || length3 <= 0)
        raise TriangleError
        binding.pry
      else
      end
    end
  end
  
  def triangle_inequality?
    if((self.length1 + self.length2 >= self.length3) ||
       (self.length2 + self.length3 >= self.length1) ||
       (self.length1 + self.length3 >= self.length2))
      true
    else
      raise TriangleError
    end
  end
  
  def equilateral?
    if(self.length1 == self.length2 && self.length1 == self.length3)
      true 
    else 
      false
    end
  end
  
  def isosceles?
    if(self.length1 == self.length2 || self.length1 == self.length3 || self.length2 == self.length3)
      true
    else 
      false
    end
  end
    
  def scalene?
    if(self.length1 != self.length2 && self.length1 != self.length3 && self.length2 != self.length3)
      true
    else 
      false
    end
  end
  
  
  class TriangleError < StandardError
    def message 
      "Invalid Triangle"
    end
  end
  
end

# binding.pry