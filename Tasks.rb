require_relative 'task1'
require_relative 'task2'
require_relative 'Task3'
require_relative 'Task4'
require_relative 'Task5'
require_relative 'task6'

class MyTasks
  def invitation
    puts 'Enter task number(1-6)'
    choice = gets.to_i
    case choice
    when 1
      Task1.new.print
    when 2
      radius = get_radius
      indent = get_indent
      Task2.new(radius, indent)
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
      invitation
    end
  end

  private
  def get_radius
    loop do
      puts 'Enter circle radius'
      radius = gets.to_i
      if radius.positive?
        return radius
      else
        puts 'Radius cant be less than 1'
      end
    end
  end

  def get_indent
    loop do
      puts 'Enter Indent'
      indent = gets.to_i
      if indent >= 0 && indent <= 150
        return indent
      else
        puts 'Indent cant be less than 0 and more than 150'
      end
    end
  end
end

MyTasks.new
