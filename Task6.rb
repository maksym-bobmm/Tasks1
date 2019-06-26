=begin
Написать метод, который принимает многомерный массив и тип данных, возвращает массив этих типов. Пример:

    array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]

get_all(array, String)
=> ['1', '2', '5', '10', 'i', 'love', 'ruby', 'text']

get_all(array, Integer)
=> [1, 2, 3, 4, 111, 222, 333, 444, 100000]
=end

def get_all(array, type)

end

array = [[1, 2, 3, 4, '1'], %w[2 5 10], [111, 222, 333, 444], %w[i love ruby], { key: 'value' }, [[['text', 100_000]]]]
array.display