# frozen_string_literal: true

# Print to console 30 times "<3 ruby", each in a new line, 10th, 20th, and 25th output just "ruby".
class Task1
  def print
    (1..30).each do |i|
      case i
      when 10, 20, 25
        puts 'ruby'
      else
        puts '<3 ruby'
      end
    end
  end
end
