class Triangle
  # write code here
  attr_accessor :a,:b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    raise TriangleError, 'Sum of two sides must be greater than the third.' if a + b < c || b + c < a || a + c < b # not a triangle!
    raise TriangleError, 'Sum of two sides must not be equal to the third.' if a + b == c || b + c == a || a + c == b # degenerate triangle!
  
    return :equilateral  if a == b && a == c
    return :isosceles    if a == b || b == c || a == c
    return :scalene      if a != b && b != c && a != c
  end
  class TriangleError < StandardError
    def message
      "Triange Error"
    end

  end
end