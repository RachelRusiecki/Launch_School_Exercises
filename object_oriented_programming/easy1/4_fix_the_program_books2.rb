# Complete this program so that it produces the expected output:

class Book
  attr_accessor :title, :author
  
  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# What do you think of this way of creating and initializing Book objects? (The two steps are separate.)
# Would it be better to create and initialize at the same time like in the previous exercise? What potential problems, if any, are introduced by separating the steps?

# I think creating the important instance variables at the time of initialization is better because it gives us a clear reference point to the newly created object.
# By creating them separately, we are also being forced to make the setter method public. 
# This could have implications to our code down the line if we do not want any outside forces changing an object's state, for example.
