# Why does the following code give us the following error when we run it?

def execute(block)
    block.call
end
execute { puts "Hello from inside the execute method!" }

# The method parameter block is missing the ampersand sign & that allows a block to be passed as a parameter.