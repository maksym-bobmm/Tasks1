=begin
Написать метод, который принимает строку и приводит её в CamelCase, ruby_case_underscore и css-case. Пример:

    str = 'i love ruby'
formatize(str, :camel)
=> 'ILoveRuby'
formatize(str, :underscore)
=> 'i_love_ruby'
formatize(str, :css)
=> 'i-love-ruby'
=end
def formalize(str, style)
  case style
  when :camel
    strarr = str.split
    strarr.each do |item|
      item.capitalize!
    end
    strarr.join
  when :underscore
    str.gsub ' ', '_'
  when :css
    str.gsub ' ', '-'
  end
end

str = 'i love ruby'
puts str, "\n"
puts formalize(str, :camel)
puts formalize(str, :underscore)
puts formalize(str, :css)
