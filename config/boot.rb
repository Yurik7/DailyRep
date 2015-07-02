ENV['MONGOID_ENV'] = 'development'
Mongoid.load!('./config/mongoid.yml')

class String
  def serial_replace(char, array)
    indexes = (0..length).find_all { |i| self[i, 1] == char }
    shift = 0
    indexes.each_with_index do |val, i|
      self[val + shift] = array[i] if array[i]
      shift += array[i].length - 1
    end
    self
  end
end
