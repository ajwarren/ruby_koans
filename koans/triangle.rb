# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  a, b, c = [a, b, c].sort
  raise TriangleError if (a + b <= c)
  result = [a, b, c].uniq
  [nil, :equilateral, :isosceles, :scalene][result.size]
  # Me: This is not my code, I ended up having a weird versioning issue and this was already entered. See https://gist.github.com/danneu/1126423.
  #     I did have to change the 'require' command in about_triangle_project, however, to require_relative 'triangle'
  #     I was getting an error when I didn't implement this correctly.
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
