# frozen_string_literal: true

# Draw a circle in the console, the diameter / radius of which is set from the console.
class Task2
  def make_left_spaces(radius, line_number, indent = 25)
    if line_number < radius
      (' ' * indent + ' ' * (radius * 2 - line_number * 2))
    else
      (' ' * indent + ' ' * (line_number * 2 - radius * 2))
    end
  end

  def draw_circle(radius = 5, indent = 25)
    internal_spaces = radius * 4 # r*2*2
    (1..radius * 2 + 1).each do |line_number|
      if line_number == 1 || line_number == radius * 2 + 1 # top and bottom line of the circle
        puts(make_left_spaces(radius, line_number - 1, indent) + '* * *')
      elsif line_number == radius + 1 # middle line of the circle
        puts(make_left_spaces(0, 0, indent) + ' **' + ' ' * radius * 4 + '**')
      elsif line_number <= radius # top half lines of the circle
        puts(make_left_spaces(radius, line_number - 1, indent) + '*' + ' ' * line_number * 4 + '*')
      else # bottom half lines of the circle
        puts(make_left_spaces(radius, line_number - 1, indent) + '*' + ' ' * internal_spaces + '*')
        internal_spaces -= 4
      end
    end
  end

  def initialize(radius = 5, indent = 50)
    draw_circle(radius, indent)
  end
end
