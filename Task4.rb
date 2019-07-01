class Task4
  def find_value(hash, my_key = :key1)
    hash.each do |key, value|
      if key == my_key
        puts "#{key}: #{value}"
        return value
      else
        if value.class == Hash && value.count > 0
          find_value(value, my_key)
        end
      end
    end
  end

  def initialize
    hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}
    find_value(hash, :key9)
  end
end