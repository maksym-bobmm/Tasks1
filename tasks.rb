# frozen_string_literal: true

# The previous task to integrate into classes, put together in a module.
# Each task is launched using the console.
# That is, entered into the console 1 - the first task is launched and executed.
require_relative 'task1'
require_relative 'task2'
require_relative 'task3'
require_relative 'task4'
require_relative 'task5'
require_relative 'task6'
# class that unite all tasks
class MyTasks
  def choice
    puts 'Enter task number(1-6)'
    gets.to_i
  end

  def invitation
    case choice
    when 1 then Task1.new.print
    when 2 then Task2.new(radius, indent)
    when 3
      puts 'Enter matrix size'
      Task3.new(gets.to_i)
    when 4 then Task4.new
    when 5 then Task5.new
    when 6 then Task6.new
    else puts 'Wrong number, try again'
    end
  end

  def initialize
    loop do
      invitation
    end
  end

  private

  def radius
    loop do
      puts 'Enter circle radius'
      radius = gets.to_i
      return radius if radius.positive?

      puts 'Radius cant be less than 1'
    end
  end

  def indent
    loop do
      puts 'Enter Indent'
      indent = gets.to_i
      return indent if indent >= 0 && indent <= 150

      puts 'Indent cant be less than 0 and more than 150'
    end
  end
end

MyTasks.new
