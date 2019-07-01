#frozen_string_literal: true
class Task5
  def formalize(str, style)
    case style
    when :camel
      str.split.map(&:capitalize).join
    when :underscore
      str.gsub ' ', '_'
    when :css
      str.gsub ' ', '-'
    end
  end

  def initialize
    str = 'i love ruby'
    puts str, "\n"
    puts formalize(str, :camel)
    puts formalize(str, :underscore)
    puts formalize(str, :css)
  end
end