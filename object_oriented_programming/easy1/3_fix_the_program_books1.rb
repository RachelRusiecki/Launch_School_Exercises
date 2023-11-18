# Complete this program so that it produces the expected output:

class Book
  attr_reader :author, :title
  
  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# What are the differences between attr_reader, attr_writer, and attr_accessor? Why did we use attr_reader instead of one of the other two? Would it be okay to use one of the others?
# Why or why not?

# attr_reader sets a getter method, attr_writer sets a setter method, and attr_accessor sets both.
# We used an attr_reader in this case because we only wanted to return the author and title, not change them.
# It would not be okay to use attr_writer because that would not give us the getter mthod we need.
# The code would run as expected if attr_accesor was used, but it's better to keep methods private if they are not being used. In this case there is no use for the setter method.

# Instead of attr_reader, suppose you had added the following methods to this class:

def title
  @title
end

def author
  @author
end

# Would this change the behavior of the class in any way? If so, how? If not, why not? Can you think of any advantages of this code?

# No, this would not change the behavior because these are just the same getter methods written out in long form.
# This can be advantageous if the instance variables need to be customized in some way instead of just being returned.
