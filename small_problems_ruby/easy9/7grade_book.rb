=begin

Problem:
- Input: 3 integers
- Output: string

Explicit Rules:
- Method will take 3 integer arguments
- The method will find the average of the 3 integers
- The return value will be a string letter grade associated with that average
- Assume all numbers will be b/t 0 - 100, so no need to validate

Implicit Rules:
- Scores will be whole numbers (itegers)
- 'A' is 90 - 100
- 'B' is 80 - 89
- 'C' is 70 - 79
- 'D' is 60 - 69
- 'F' is 0 - 59

Algorithm:
- Define a method called `get_grade` that takes 3 integer arguments
  - Add the integers together and divide by 3 to get the average
  - If the average is b/t 90 - 100 return 'A'
  - If the average is b/t 80 - 89 return 'B'
  - If the average is b/t 70 - 79 return 'C'
  - If the average is b/t 60 - 69 return 'D'
  - If the average is b/t 0 - 59 return 'F'

=end

def get_grade(score1, score2, score3)
  grade = (score1 + score2 + score3) / 3
  case
  when grade >= 90 then 'A'
  when grade.between?(80, 89) then 'B'
  when grade.between?(70, 79) then 'C'
  when grade.between?(60, 69) then 'D'
  else
    'F'
  end
end

p get_grade(195, 190, 193) == "A"
p get_grade(50, 50, 95) == "D"
