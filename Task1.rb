# Вывести в консоль, 30 раз "<3 ruby", каждый в новой строке, 10ый, 20ый, и 25ый вывод вывести просто "ruby".
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