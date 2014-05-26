# I worked on this challenge with: Zach Pflederer

# 2. Pseudocode
#define a method named super_fizzbuzz
#which takes an array as an argument
#and which iterates through the array, checking each value for divisibility by 3 and 5
#through a case statement, the first condition checks if value is divisible by both 3 and 5
#second condition check divisibility by 3
#third checks divisibility by 5
#else return value


# 3. Initial Solution
# def super_fizzbuzz(array)
#   array.map! do |n|
#     if n%3 == 0 && n%5 == 0
#       n = "FizzBuzz"
#     elsif n%3 == 0
#       n = "Fizz"
#     elsif n%5 == 0
#       n = "Buzz"
#     else
#       n
#     end
#   end
#   p array
# end
# 4. Refactored Solution


def super_fizzbuzz(array)
  array.dup.map! do |n|
    if n%15 == 0
      n = "FizzBuzz"
    elsif n%3 == 0
      n = "Fizz"
    elsif n%5 == 0
      n = "Buzz"
    else
      n
    end
  end

end





# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
    raise 'nope' unless yield
    puts yield
end

assert { super_fizzbuzz([3]) == ['Fizz'] }
assert { super_fizzbuzz([3, 3, 3]) == ['Fizz', 'Fizz', 'Fizz'] }
assert { super_fizzbuzz([5]) == ['Buzz'] }
assert { super_fizzbuzz([15]) == ['FizzBuzz'] }
assert { super_fizzbuzz([1, 2, 3]) == [1, 2, 'Fizz'] }
assert { super_fizzbuzz([15, 5, 3, 1]) == ['FizzBuzz', 'Buzz', 'Fizz', 1] }


# 5. Reflection

#I had a lot of fun working on this exercise with Zach. I keep feeling like there must be a way to combine the 3 and 5 tests, but with an array, I'm just not sure any method of doing so would be this succinct. Whe n the challenge is to print them, it would be relatively easy to use only two argument (3 and 5) rather than test for modulus 15 as well.
