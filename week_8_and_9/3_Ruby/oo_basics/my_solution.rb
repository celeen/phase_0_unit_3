# U3.W8-9: OO Basics: Student


# I worked on this challenge [by myself].

# 2. Pseudocode
#define class Student
#define initialize method, which takes two arguments
#first_name, and scores, which should be a splat
#assign instance variables to arguments
#assign first_name to equal scores array


# 3. Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, *scores)   
  	@first_name = first_name
  	@scores = scores

  	first_name = scores
  end
end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# Tests for release 0:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for release 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# 5. Reflection 