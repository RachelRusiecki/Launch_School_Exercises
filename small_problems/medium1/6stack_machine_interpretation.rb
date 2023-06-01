=begin

Problem:
- Input: string
- Output: print integers to terminal

Explicit Rules:
- Write a method that creates a mini stack & register programming language
  - Each operation operates on a register, which is the current value
  - The stack is an array
  - The register interacts w/ the last element of the stack and pops it off
  - The return value of the operation becomes the new register
- The method will take 1 string argument, representing the language commands
  - n: Place a value n in the register. Do not modify the stack.
  - PUSH: Push the register value on to the stack. Leave the value in the register.
  - ADD: Pops a value from the stack & adds it to the register value, storing the result in the register.
  - SUB: Pops a value from the stack & subtracts it from the register value, storing the result in the register.
  - MULT: Pops a value from the stack & multiplies it by the register value, storing the result in the register.
  - DIV: Pops a value from the stack & divides it into the register value, storing the integer result in the register.
  - MOD: Pops a value from the stack & divides it into the register value, storing the integer remainder of the division in the register.
  - POP: Remove the topmost item from the stack & place in register.
  - PRINT: Print the register value.
- Assume all program strings are correct (will not try to pop a non-existent value from the stack, will not contain unknown tokens, etc)
- Initial register value will be 0

Implicit Rules:
- Each word in the string argument is a command

Algorithm:
- Define a method called 'minilang' that takes 1 argument, a string
  - Initial a register variable & set it equal to 0
  - Initialize an empty array variable for the stack
  - Split the string into an array of words (commands)
  - Iterate through the array
    - Start a case statement
      - When the word is a number
        - Reassign it to the register variable as an integer
      - When the word is 'PUSH'
        - Push the register value to the stack array
      - When the word is 'ADD'
        - Pop the last value from the stack array
        - Add it to the register value
        - Reassign the result to the register variable
      - When the word is 'SUB'
        - Pop the last value from the stack array
        - Subtract it from the register value
        - Reassign the result to the register variable
      - When the word is 'MULT'
        - Pop the last value from the stack array
        - Multiply it by the register value
        - Reassign the result to the register variable
      - When the word is 'DIV'
        - Pop the last value from the stack array
        - Divide the register value by the value
        - Reassign the result to the register varibale
      - When the word is 'MOD'
        - Pop the last value from the stack array
        - Divide the register value by the value
        - Reassign the remainder to the register variable
      - When the word is 'POP'
        - Pop the last value from the stack array
        - Reassign the value to the register variable
      - When the word is 'PRINT'
        - Print the register to the terminal 

=end

def minilang(commands)
  register = 0
  stack = []
  commands.split.each do |command|
    case
    when command =~ /[0-9]/
      register = command.to_i
    when command == 'PUSH'
      stack << register
    when command == 'ADD'
      if stack.empty?
        puts 'Error! Stack is empty.'
      else
        register += stack.pop
      end
    when command == 'SUB'
      if stack.empty?
        puts 'Error! Stack is empty.'
      else
        register -= stack.pop
      end
    when command == 'MULT'
      if stack.empty?
        puts 'Error! Stack is empty.'
      else
        register *= stack.pop
      end
    when command == 'DIV'
      if stack.empty?
        puts 'Error! Stack is empty.'
      else
        register /= stack.pop
      end
    when command == 'MOD'
      if stack.empty?
        puts 'Error! Stack is empty.'
      else
        register %= stack.pop
      end
    when command == 'POP'
      if stack.empty?
        puts 'Error! Stack is empty.'
      else
        register = stack.pop
      end
    when command == 'PRINT'
      puts register
    else
      puts 'Invalid Command'
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# Try writing a minilang program to evaluate and print the result of this expression:
# (3 + (4 * 5) - 7) / (5 % 3)

minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT')

minilang('ADD')

minilang('ADDED')
