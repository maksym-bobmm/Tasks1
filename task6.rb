# frozen_string_literal: true

# Write a method that accepts a multidimensional array and data type returns an array of these types. Example:
# array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'],
#         { key: 'value' }, [[['text', 100_000]]]]
#
# get_all(array, String)
# => ['1', '2', '5', '10', 'i', 'love', 'ruby', 'text']
#
# get_all(array, Integer)
# => [1, 2, 3, 4, 111, 222, 333, 444, 100000]
class Task6
  # array.flatten.map { |val| val if val.is_a?(Integer) }.compact
  def get_all(array, type, result_array = [])
    array.each do |item|
      # puts item, item.class.to_s, type, "\n"
      # if item.class.to_s == 'Array' || item.class.to_s == 'Hash'
      if %w[Array Hash].include?(item.class.to_s)
        get_all(item, type, result_array) if item.count.positive?
      elsif item.class.to_s == type
        result_array << item
      end
    end
    result_array
  end

  def initialize
    array = [[1, 2, 3, 4, '1'], %w[2 5 10], [111, 222, 333, 444], %w[i love ruby],
             { key: 'value' }, [[['text', 100_000]]]]
    array.display
    puts "\n\n"
    get_all(array, 'Integer').display
    puts
    get_all(array, 'String').display
    puts
  end
end
