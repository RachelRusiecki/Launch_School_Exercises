# rubocop:disable Layout/LineLength
=begin

Problem:
Explicit Rules:
- Create a singly linked list whose elements contain a range of data
- Create method that reverse the list
- Create method that coverts the list to an array and back

Implicit Rules:
- Element class
  - The initialize method will take at least 1 number argument
    - 2nd optional argument represents the next element in the list
  - The datum instance method should return the number
  - The tail? instance method should return true
  - The next instance method should return the following element in the list, or nil if the list is only 1 element
- SimpleLinkedList class
  - The empty? instance method should return true right after instantiation
    - Once an element has been pushed, empty? should return false
  - The push instance method will take 1 argument & will push the argument to the List
  - The size instance method should return how many elements are in the List
  - The peek instance method should return the most recently added element, or nil if empty
  - The head instance method should return an Element object, the last object that was added to the list
  - The pop instance method deletes and returns the most recently added element
  - The from_a class method should take 1 argument convert an array to a SimpleLinkedList object
    - If argument is empty array or nil, List object will be empty
    - The elements of the array argument will be added to the list in the reverse order
  - The to_a instance method converts SimpleLinkedList object to array
    - The elements should appear in the array in the same order (head to tail)
  - The reverse instance method should reverse the order of the list

Data Structures:
- Arrays
- Ranges

Algorithm:
- Define Element class
  - Define initialize method that takes 1 integer argument & 1 default argument set to the 1st argument - 1
    - Save both arguments for later use
    - If 2nd argument is 0, reassign to nil
  - Define datum instance method
    - Return integer
  - Define tail? instance method
    - Return true unless datum is nil
  - Define next instance method
    - Find next instance variable (datum - 1)
- Define SipleLinkedList class
  - Define initialize method that takes default argument set to empty array
    - Assign new instance variable to array argument
  - Define empty? instance method
    - Return true if array is empty, otherwise false
  - Define push instance method that takes 1 Element argument
    - Append the argument to the array
  - Define size instance method
    - Return size of array
  - Define peek instance method
    - Return last element in array
  - Define head instance variable
    - Return last element in array
  - Define pop instance variable
    - Pop last element from array
  - Define from_a class method that takes 1 array argument
    - Initialize new SLL object with array passed in as argument
    - Reverse array
  - Define to_a instance method
    - Return array instance variable
  - Define reverse instance method
    - Reverse array

=end
# rubocop:enable Layout/LineLength

class Element
  attr_reader :datum, :next

  def initialize(datum, next_element = nil)
    @datum = datum
    @next = next_element
  end

  def tail?
    @next.nil?
  end
end

class SimpleLinkedList
  attr_reader :head

  def size
    size = 0
    current_elem = @head
    while current_elem
      size += 1
      current_elem = current_elem.next
    end
    size
  end

  def empty?
    @head.nil?
  end

  def push(datum)
    element = Element.new(datum, @head)
    @head = element
  end

  def peek
    @head&.datum
  end

  def pop
    datum = peek
    new_head = @head.next
    @head = new_head
    datum
  end

  def self.from_a(array)
    array = [] if array.nil?

    list = SimpleLinkedList.new
    array.reverse_each { |datum| list.push(datum) }
    list
  end

  def to_a
    array = []
    current_elem = head
    while !current_elem.nil?
      array.push(current_elem.datum)
      current_elem = current_elem.next
    end
    array
  end

  def reverse
    list = SimpleLinkedList.new
    current_elem = head
    while !current_elem.nil?
      list.push(current_elem.datum)
      current_elem = current_elem.next
    end
    list
  end
end
