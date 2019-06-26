class Task1
  def print
    (1..30).each do |i|
      i.display
      case i
      when 10, 20, 25
        puts ' ruby'
      else
        puts ' <3 ruby'
      end
    end
  end

  def initialize
    print
  end
end

class Task2
  def make_left_spaces(r, line_number, indent = 25)
    if line_number < r
      (' ' * indent + ' ' *  (r*2 - (line_number)*2))
    else
      (' ' * indent + ' ' * (line_number*2 - r*2))
    end
  end

  def drawCircle(r = 5, indent = 25)
    internal_spaces = r * 4 # r*2*2
    (1..r * 2 + 1).each do |line_number|
      if line_number == 1 || line_number == r*2 + 1  # top and bottom line of the circle
        puts(make_left_spaces(r, line_number-1, indent) + '* * *')
      elsif line_number == r + 1  #middle line of the circle
        puts( make_left_spaces(0, 0, indent) + ' **' + ' '*r*4 + '**')
      elsif line_number <= r    #top half lines of the circle
        puts(make_left_spaces(r, line_number-1, indent) + '*' + ' ' * (line_number) * 4 + '*')
      else      # bottom half lines of the circle
        puts(make_left_spaces(r, line_number-1, indent) + '*' + ' ' * internal_spaces + '*')
        internal_spaces -= 4
      end
    end
  end

  def initialize(radius = 5, indent = 50)
    drawCircle(radius, indent)
  end
end

class Task3
  def createMatrix(size)
    var = Array.new(size) {Array.new(size, 0)}
    return var
  end

  def doMatrix(size = 6)
    i = 0
    array = createMatrix(size)
    array.each do |subArray|
      subArray[i] = 1
      i += 1
    end
    # array.display
    printMatrix(array)
  end

  def printMatrix(arr)
    arr.each do |subArray|
      subArray.display
      puts
    end
  end
  def initialize(size = 6)
    doMatrix(size)
  end
end

class Task4
  def find_value(hash, mykey = :key1)
    hash.each do |key, value|
      if key == mykey
        puts "\nWe found it! #{key}: #{value}"
        return value
      else
        puts "no + #{key} + #{value}"
        if value.class == Hash && value.count > 0
          puts "yes #{key} #{value}", "go search from #{key}"
          find_value(value, mykey)
        end
      end
      # puts value.class
    end
  end
  def initialize
    hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}
    hash.display
    find_value(hash, :key9)
  end
end

class Task5
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
  def initialize
    str = 'i love ruby'
    puts str, "\n"
    puts formalize(str, :camel)
    puts formalize(str, :underscore)
    puts formalize(str, :css)
  end
end

class Task6
  def get_all(array, type, result_array = Array.new)
    array.each do |item|
      # puts item, item.class.to_s, type, "\n"
      if item.class.to_s == 'Array' || item.class.to_s == 'Hash'
        if item.count > 0
          get_all(item, type, result_array)
        end
      elsif item.class.to_s == type
        result_array << item
      end
    end
    return result_array
  end

  def initialize
    array = [[1, 2, 3, 4, '1'], %w[2 5 10], [111, 222, 333, 444], %w[i love ruby], { key: 'value' }, [[['text', 100_000]]]]
    array.display
    puts "\n\n"
    get_all(array, 'Integer').display
    puts
    get_all(array, 'String').display
    puts
  end

end

class MyTasks
  def Invitation
    puts "Enter task number(1-6)"
    choice = gets.to_i
    case choice
    when 1
      Task1.new
    when 2
      puts 'Enter circle radius'
      r = gets.to_i
      puts 'Enter Indent'
      puts indent = gets.to_i
      Task2.new(r, indent)
    when 3
      puts 'Enter matrix size'
      size = gets.to_i
      Task3.new(size)
    when 4
      Task4.new
    when 5
      Task5.new
    when 6
      Task6.new
    else
      puts 'Wrong number, try again'
    end
  end
  def initialize
    loop do
      Invitation()
    end
  end
end

MyTasks.new

