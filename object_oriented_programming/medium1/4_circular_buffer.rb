# Your task is to write a CircularBuffer class that implements a circular buffer for arbitrary objects.
# The class should obtain the buffer size with an argument provided to CircularBuffer::new, and should provide the following methods:
# put to add an object to the buffer, get to remove (and return) the oldest object in the buffer. It should return nil if the buffer is empty.
# You may assume that none of the values stored in the buffer are nil (however, nil may be used to designate empty spots in the buffer).

require 'pry'

class CircularBuffer
  def initialize(num)
    @buffer = Array.new(num)
    @size = num
  end

  def put(value)
    @buffer << value
    @buffer.shift
  end

  def get
    return_value = nil
    @buffer.each do |ele|
      if ele.nil?
        next
      else
        return_value = @buffer.delete(ele)
        break
      end
    end
    @buffer.unshift(nil) if @buffer.size < @size
    return_value
  end
end

buffer = CircularBuffer.new(3)
puts buffer.get == nil

buffer.put(1)
buffer.put(2)
puts buffer.get == 1

buffer.put(3)
buffer.put(4)
puts buffer.get == 2

buffer.put(5)
buffer.put(6)
buffer.put(7)
puts buffer.get == 5
puts buffer.get == 6
puts buffer.get == 7
puts buffer.get == nil

buffer = CircularBuffer.new(4)
puts buffer.get == nil

buffer.put(1)
buffer.put(2)
puts buffer.get == 1

buffer.put(3)
buffer.put(4)
puts buffer.get == 2

buffer.put(5)
buffer.put(6)
buffer.put(7)
puts buffer.get == 4
puts buffer.get == 5
puts buffer.get == 6
puts buffer.get == 7
puts buffer.get == nil
