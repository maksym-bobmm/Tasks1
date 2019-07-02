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
    last_line_number = radius * 2 + 1
    (1..last_line_number).each do |line_number|
      if [1, last_line_number].include?(line_number) # top and bottom line of the circle
        draw_line(radius, line_number - 1, indent, nil, :top_bottom)
      elsif line_number == radius + 1 # middle line of the circle
        draw_line(0, 0, indent, internal_spaces, :center)
      elsif line_number <= radius # top half lines of the circle
        draw_line(radius, line_number - 1, indent, line_number * 4)
      else # bottom half lines of the circle
        draw_line(radius, line_number - 1, indent, internal_spaces)
        internal_spaces -= 4
      end
    end
  end

  def draw_line(radius, line_number, indent, space_repeat_number = nil, line_type = :common)
    if line_type == :center
      puts(make_left_spaces(radius, line_number, indent) + ' **' + ' ' * space_repeat_number + '**')
    elsif line_type == :top_bottom
      puts(make_left_spaces(radius, line_number, indent) + '* * *')
    else
      puts(make_left_spaces(radius, line_number, indent) + '*' + ' ' * space_repeat_number + '*')
    end
  end

  def initialize(radius = 5, indent = 50)
    draw_circle(radius, indent)
  end
end
