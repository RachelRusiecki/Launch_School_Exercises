# rubocop:disable Layout/LineLength
=begin

Problem:
Explicit Rules:
- Define a custom set type
- Assume all elements of a set are numbers

Implicit Rules:
- New set should start put empty if initialized w/o arguments, but can take array arguments
- Elements of the array argument are contained in the Set
- Sets can have empty subsets or subsets w/ <= # of elements, but must be same elements
- Sets are disjointed if they don't share any elements, including an empty w/ non-empty
- Sets are equal if they have the same unique elements
- Can add to a set through instance method
- If an existing element is added, it will be ignored
- The intersection of 2 Sets is whatever they have in common (could be just an empty set if no common elements)
- The difference always returns a new Set object, subtracts argument's elements from original elements
- Only elements that appear in the original Set will be subtracted
- The union of 2 Sets joins the unique elements in a new Set

Data Structures:
- Arrays

Algorithm:
- Define class CustomSet
  - Define initialize method that takes 1 optional array argument, default value is empty array
    - Save array in instance variable
  - Define empty? instance method
    - Return true if array is empty, false otherwise
  - Define contains? instance method that takes 1 argument
    - Return true if argument is included in array, false otherwise
  - Define subset? instance method that takes 1 CustomSet object argument
    - Return true if argument is empty
    - Return true if all elements in argument are included in Set
  - Define disjoint? instance method that takes 1 CustomSet object argument
    - Return true if argument is empty
    - Return true if none of the elements in argument are included in Set
  - Define eql? instance method that takes 1 CustomSet object argument
    - Return true if the unique sorted arrays are he same
  - Define add instance method that takes 1 number argument
    - Append # to array
    - Find unique value of array
  - Define intersection instance method that takes 1 CustomSet object argument
    - Return new CustomSet object w/ intersection of both arrays
  - Define difference instance method taht takes 1 CustomSet object argument
    - Return new CustomSet object w/ difference of arrays
  - Define union instance method that takes 1 CustomSet object argument
    - Return new CustomSet object w/ union of both arrays

=end
# rubocop:enable Layout/LineLength

class CustomSet
  def initialize(arr=[])
    @arr = arr.uniq
  end

  def empty?
    arr.empty?
  end

  def contains?(num)
    arr.include?(num)
  end

  def subset?(other_set)
    arr.all? { |num| other_set.contains?(num) }
  end

  def disjoint?(other_set)
    other_set.arr.none? { |num| contains?(num) }
  end

  def eql?(other_set)
    arr.uniq.sort == other_set.arr.uniq.sort
  end

  def add(num)
    arr << num unless arr.include?(num)
    self
  end

  def intersection(other_set)
    CustomSet.new(arr.intersection(other_set.arr))
  end

  def difference(other_set)
    CustomSet.new(arr.difference(other_set.arr))
  end

  def union(other_set)
    CustomSet.new(arr.union(other_set.arr))
  end

  def ==(other_set)
    eql?(other_set)
  end

  protected

  attr_reader :arr
end
