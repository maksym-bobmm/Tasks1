=begin

Вывести в консоль матрицу с еденицами по диагонали. Размер задается с консоли. Пример:

    1 0 0 0 0 0
    0 1 0 0 0 0
    0 0 1 0 0 0
    0 0 0 1 0 0
    0 0 0 0 1 0
    0 0 0 0 0 1
=end
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


Task3.new()
