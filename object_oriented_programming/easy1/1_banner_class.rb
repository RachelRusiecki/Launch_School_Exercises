# Behold this incomplete class for constructing boxed banners.

class Banner
  def initialize(message, width = message.size + 4)
    @message = message
    @width = width
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule; "+#{'-' * (@width - 2)}+" end

  def empty_line; "|#{' ' * (@width - 2)}|" end

  def message_line
    str = ''
    if @message.size > @width - 4
      start_idx = 0
      end_idx = @width - 5
      loop do
        str << "| #{@message[start_idx..end_idx].center(@width - 4)} |"
        break if end_idx >= (@message.size)
        start_idx += (@width - 4)
        end_idx += (@width - 4)
        str << "\n"
      end
    else
      str << "|#{@message.center(@width - 2)}|"
    end
    str
  end
end

# Complete this class so that the test cases shown below work as intended. You are free to add any methods or instance variables you need.
# However, do not make the implementation details public. You may assume that the input will always fit in your terminal window.

# Modify this class so new will optionally let you specify a fixed banner width at the time the Banner object is created.
# The message in the banner should be centered within the banner of that width. Decide for yourself how you want to handle widths that are either too narrow or too wide.

banner = Banner.new('To boldly go where no one has gone before.', 27)
puts banner
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

banner2 = Banner.new('')
puts banner2
# +--+
# |  |
# |  |
# |  |
# +--+
