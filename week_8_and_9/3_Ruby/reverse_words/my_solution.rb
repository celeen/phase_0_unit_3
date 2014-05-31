# U3.W8-9: Reverse Words


# I worked on this challenge [by myself].

# 2. Pseudocode
#define a method, reverse_words, which takes one argument, a string
#split the string into an array
#map the array, reversing each word
#join the array using a space


# 3. Initial Solution
def reverse_words(string)
	reversed_words = string.split.map {|word| word.reverse}
	reversed_words.join(" ")
end



# 4. Refactored Solution
def reverse_words(string)
	(string.split.map {|word| word.reverse}).join(" ")
end






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def assert 
	raise "Something's not right..." unless yield
	puts yield
end

def random_word(length = 5)
  rand(36**length).to_s(36)
end

puts "Test 1: Should do nothing to an empty string"
assert { reverse_words("") == "" }

puts "Test 2: reverses a single word"
word = random_word
assert { reverse_words(word) == word.reverse }

puts "Test 3: reverses two words"
word1 = random_word
word2 = random_word
assert { reverse_words("#{word1} #{word2}") == "#{word1.reverse} #{word2.reverse}" }

puts "Test 4: reverses a sentence"
assert {reverse_words("Ich bin ein Berliner") == "hcI nib nie renilreB"}




# 5. Reflection

#What fun! I've been working on javascript lately, so switching back took me a minute. But, what a relief to be working on something that I don't suck at... :/