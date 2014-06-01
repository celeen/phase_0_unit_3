# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
#define a class, Rectangle
#assign attr_accessor to width and height symbols (two aruments for initialization)
#assign instance variables to arguments
#end
#define a method area
#area multiplies width and height, and returns the result
#define a method peremiter
#which multiplies both width and height by two, and adds those results. The final result is returned.
#define a method diagonal,
#which uses the pythagorean theorem to return the hypotenuse of the triangle made by the rectangle's sides, and returns a float
#define a method square?,
#which compares the two variables width and height. If they are equal, it returns true
#if not, it returns false


# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

def area
	width*height
end

def perimeter
	(2*width) + (2*height)
end

def diagonal
	Math.sqrt((width**2) + (height**2))
end

def square?
	width == height
end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end




# 4. Refactored Solution

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

	def area
		width*height
	end

	def perimeter
		2*(width + height)
	end

	def diagonal
		Math.sqrt(width**2 + height**2)
	end

	def square?
		width == height
	end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Something's not right..." unless yield
	puts yield
end

rectangle = Rectangle.new(10, 20)
square = Rectangle.new(20,20)

puts "Test 0: #area is defined"
puts "Test 1: #area returns the correct area of the rectangle"
assert { rectangle.area == 200}

puts "Test 2: #area returns the correct area of a square"
assert {square.area == 400}

puts "Test 3: #perimeter is defined"
puts "Test 4: return the correct perimeter of a rectangle"
assert {rectangle.perimeter == 60}

puts "Test 5: returns the correct perimeter of a square"
assert { square.perimeter == 80}

puts "Test 6: #diagonal is defined"
puts "Test 7 : #diagonal returns the correct diagonal of a rectangle"
assert { rectangle.diagonal == 22.360679774997898 }

puts "Test 8: #diagonal returns the correct diagonal of a square"
assert { square.diagonal == 28.284271247461902 }

puts "Test 9: #square? is defined"
puts "Test 10: #square? returns fasle for a rectangle"
assert { rectangle.square? == false }

puts "Test 11: #square? returns true for a square"
assert { square.square? == true }







# 5. Reflection 

#The only initial failure I had was because I spelled perimeter wrong. Consistently. Hah.
#This exercise seemed suspiciously simple. :/