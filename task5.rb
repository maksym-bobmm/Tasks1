# frozen_string_literal: true

# Write a method that takes a string and lists it in CamelCase, ruby_case_underscore, and css-case. Example:
# str = 'i love ruby'
# formatize(str, :camel)
# => 'ILoveRuby'
# formatize(str, :underscore)
# => 'i_love_ruby'
# formatize(str, :css)
# => 'i-love-ruby'
class Task5
  def formalize(str, style)
    case style
    when :camel
      str.split.map(&:capitalize).join
    when :underscore
      str.tr ' ', '_'
    when :css
      str.tr ' ', '-'
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
