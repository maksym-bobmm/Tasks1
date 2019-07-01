class Task3
  def create_matrix(size)
    var = Array.new(size) {Array.new(size, 0)}
    return var
  end

  def do_matrix(size = 6)
    i = 0
    array = create_matrix(size)
    array.each do |sub_array|
      sub_array[i] = 1
      i += 1
    end
    print_matrix(array)
  end

  def print_matrix(arr)
    arr.each do |sub_array|
      sub_array.display
      puts
    end
  end

  def initialize(size = 6)
    do_matrix(size)
  end
end