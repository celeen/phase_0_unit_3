# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
#define a method is_fibonacci? which takes one argument, an integer, and checks to see if it is in the fibonacci sequence.
#If the number input is x,
#if 5(x^2) + or - 4 is a square (or both) then x is in the fibonacci sequence



# 3. Initial Solution
require 'bigdecimal'

def is_fibonacci?(num)
	if Math.sqrt((num**2)*5-4) % 1 == 0 || Math.sqrt((num**2)*5+4) % 1 == 0
		return true
	else return false
	end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
def assert 
	raise "Something's not right..." unless yield
	puts yield
end

def random_fibonacci
   [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

p "1. method returns true when an integer is one number of the Fibonacci sequence"
assert { is_fibonacci?(random_fibonacci) == true }

p "2. returns true with a large fibonacci number"
assert { is_fibonacci?(8670007398507948658051921) == true }

p "3. returns false when number is not in fibonacci sequence"
assert { is_fibonacci?(random_fibonacci + 100) == false }
p "___________"
p is_fibonacci?(927372692193078999171)
p "4. returns false on large non-fibonacci numbers"
assert { is_fibonacci?(927372692193078999151) == false }






# 5. Reflection 