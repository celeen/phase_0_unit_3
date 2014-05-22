# U3.W7: Build an Electronic Grocery List!

# Your full names:
# 1. Celeen Rusk
# 2. Tim Howard

# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to create a list for groceries
# As a user, I want to add items to the list
# As a user, I want to be able to remove items from the list
# As a user, I want to note the price of each item
# As a user, I want to note needed quantity of the item
# As a user, I want to see the total cost of the items on the list
# As a user, I want to set a total budget
# As a user, I want to be notified when the total cost is more than the total budget

# Pseudocode
#  Implement a class titled Item
# Define initialize that accepts three arguments: name, quantity = 1, price

#  Implement a class titled ShoppingList
#  Define initialize that accepts two arguments: a list of items, total budget
#  Define add method, which add items to the list.
#  Define remove method, which remove items from the list.
#
#
#


# Your fabulous code goes here....
# 
#________________________________________
#REFACTOR WITH TIM!

class Item
  
  attr_accessor :name, :price, :quantity
  def initialize (name, price, quantity = 1)
    @name = name
    @quantity = quantity
    @price = price
  end

end

class ShoppingList 
  attr_accessor :budget, :list
  def initialize (budget = 0, *list)
    @budget = budget
    @list = list
     if list.empty?
      puts "You must add items to this list."
     else budget_check
     end
      
  end

  def total_cost
    (list.map {|item| item.price * item.quantity }).reduce(:+)
  end

  def budget_check
    if total_cost > budget
      puts "You are $#{total_cost - budget} over your budget"
     else  
      puts "You now have $#{budget - total_cost} left within your budget." 
     end
  end

  def add (*item)
    item.each {|item| list << item }
    budget_check
  end

  def remove (*items)
    items.map { |item| list.delete(item) }
    budget_check
  end
end

# DRIVER CODE GOES HERE.
def assert
  raise "Something's not right..." unless yield
  puts yield
end

apple = Item.new("apple",3)
orange = Item.new("orange",3)

target_list = ShoppingList.new(50, apple,orange)

p target_list

superglue = Item.new("superglue",4)
toilet_paper = Item.new("toilet paper", 7)

target_list.add(superglue, toilet_paper)

p target_list
p "remove"
target_list.remove(apple, orange)

p target_list

puts "1. A new list is of the class ShoppingList"
assert { target_list.class == ShoppingList }

puts "2. A new list takes one argument, a budget"
assert { target_list.budget == 50 }

apple = Item.new("apple",1)
target_list.add(apple)

puts "3. #add_item adds an item to the list"
assert { (target_list.list).include?(apple) == true }

target_list.remove(apple)
p target_list
puts "4. #remove removes item from list"
assert { (target_list.list).include?(apple) == false }

orange = Item.new("orange", 5)
tshirt = Item.new("t-shirt", 20)
target_list.add(orange, tshirt)
target_list.remove(orange, tshirt)

p target_list
p 5*5

puts "5. #remove removes multiple items from list"
assert { (target_list.list).include?(tshirt) == true }

target_list.add(tshirt)
p target_list.total_cost

puts "6. #total_cost finds the total cost of all items on the list"
assert { target_list.total_cost == 25 }

# puts "7. Error is raised if list is initialized with greater cost than budget"
# begin
# butter = Item.new("butter", 5)
# bread = Item.new("bread", 3)
# oranges = Item.new("orange", 1, 3)
# ShoppingList.new(10, butter, bread, oranges)
# rescue
#   p $!.message
# assert {$!.message == "You're spending too much!"}
# end

# puts "8. Error is raised if list goes over budget with #add method"
# begin
# butter = Item.new("butter", 5)
# bread = Item.new("bread", 3)
# oranges = Item.new("orange", 1, 3)
# list = ShoppingList.new(10, butter, bread)
# list.add(oranges)
# rescue
#   p $!.message
# assert {$!.message == "You're spending too much!"}
# end
