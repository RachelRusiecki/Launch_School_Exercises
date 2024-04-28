=begin

Problem:
- Input: n/a
- Output: string

Explicit Rules:
- Create a random robot name
- Cannot use the same name twice

Implicit Rules:
- Name format should be 2 capital letters followed by 3 digits (RA531)
- Name should be stored/kept until factory reset
- Different robot objects cannot have the same name
- There will be 2 methods: name & reset

Data Structures:
- class Robot
- name instance method
- reset instance method

Algorithm:
- Define class Robot
  - Create :name getter method
  - Initialize class variable array to hold all used names
  - Define initialize method
    - Reassign @name instance variable to new string using reset method
  - Define reset instance method
    - Start a loop
      - Assign the @name instance variable to an empty string
      - Append random capital letter to @name
      - Append random capital letter to @name
      - Append random digit to @name
      - Append random digit to @name
      - Append random digit to @name
      - Break unless final string is included in used names array
    - Append the final string to the used names array

=end

class Robot
  attr_reader :name

  @@used_names = []

  def initialize
    @name = nil
    reset
  end

  def reset
    @@used_names.delete(name) if name
    loop do
      @name = ''
      create_name
      break unless @@used_names.include?(name)
    end
    @@used_names << name
  end

  private

  def create_name
    2.times { name << rand(65..90).chr }
    3.times { name << rand(0..9).to_s }
  end
end
