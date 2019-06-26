# Написать рекурсивный метод для поиска значения ключа key9 в хеше:
#
# hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}

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

hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}
find_value(hash, :key9)