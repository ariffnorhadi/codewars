class TriangleType

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def get_type
    angles = [@a, @b, @c]
    if triangle?
      if angles.any? { |angle| angle == 90 }
        'right'
      elsif angles.any? { |angle| angle > 90 }
        'obtuse'
      elsif angles.all? { |angle| angle < 90 }
        'acute'
      end
    else
      'invalid'
    end
  end

  private

  def triangle?
    @a + @b + @c == 180
  end
end

triangle_1 = TriangleType.new(60, 60, 60).get_type
triangle_2 = TriangleType.new(30, 60, 90).get_type
triangle_3 = TriangleType.new(120, 30, 30).get_type
triangle_4 = TriangleType.new(0, 90, 45).get_type

puts "Triangle 1 is #{triangle_1}"
puts "Triangle 2 is #{triangle_2}"
puts "Triangle 3 is #{triangle_3}"
puts "Triangle 4 is #{triangle_4}"
