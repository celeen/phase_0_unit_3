# I worked on this challenge with: Zach Pflederer

# 2. Pseudocode
#


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
