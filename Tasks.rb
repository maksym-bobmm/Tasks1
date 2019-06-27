require_relative 'Task1'
require_relative 'Task2'
require_relative 'Task3'
require_relative 'Task4'
require_relative 'Task5'
require_relative 'Task6'

class MyTasks
  def Invitation
    puts "Enter task number(1-6)"
    choice = gets.to_i
    case choice
    when 1
      Task1.new
    when 2
      r, indent = 0
      loop do
        puts 'Enter circle radius'
        r = gets.to_i
        if r >0
          break
        else
          puts 'Radius cant be less than 1'
        end
      end
      loop do
        puts 'Enter Indent'
        indent = gets.to_i
        if indent >= 0 && indent <= 150
          break
        else
          puts 'Indent cant be less than 0 and more than 150'
        end
      end
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