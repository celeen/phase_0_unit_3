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
class Item
  attr_accessor :name, :quantity, :price
  def initialize (name, price, quantity = 1)
    @name = name
    @quantity = quantity
    @price = price
  end

end

class ShoppingList
  attr_accessor :budget, :list
  def initialize (budget, *list)
    @budget = budget
    @list = list
    if @list.length > 0
      @total_cost = 0 + (@list.map {|item| (item.price)*(item.quantity) }).reduce(:+)
    else
      @total_cost = 0
    end
    raise ArgumentError.new("You're spending too much!") unless @total_cost < @budget 
  end

  def total_cost
  (@list.map {|item| item.price }).reduce(:+)
  end

  def add (*item)
    item.each {|item| @list << item }
    @total_cost = 0 + (@list.map {|item| (item.price)*(item.quantity) }).reduce(:+)
    raise ArgumentError.new("You're spending too much!") unless @total_cost < @budget
  end

  def remove (item = @list.pop)
    @list.delete(item)
  end


end

# DRIVER CODE GOES HERE.
def assert
  raise "Something's not right..." unless yield
  puts yield
end


target_list = ShoppingList.new(50)

puts "1. A new list is of the class ShoppingList"
assert { target_list.class == ShoppingList }

puts "2. A new list takes one argument, a budget"
assert { target_list.budget == 50 }

apple = Item.new("apple",1)
target_list.add(apple)

puts "3. #add_item adds an item to the list"
assert { (target_list.list).include?(apple) == true }

target_list.remove(apple)

puts "4. #remove removes item from list"
assert { (target_list.list).include?(apple) == false }

orange = Item.new("orange", 5)
tshirt = Item.new("t-shirt", 20)
target_list.add(orange, tshirt)
target_list.remove

p target_list
p 5*5

puts "5. #remove removes last item from list if none is specified"
assert { (target_list.list).include?(tshirt) == false }

target_list.add(tshirt)
p target_list.total_cost

puts "6. #total_cost finds the total cost of all items on the list"
assert { target_list.total_cost == 25 }

puts "7. Error is raised if list is initialized with greater cost than budget"
begin
butter = Item.new("butter", 5)
bread = Item.new("bread", 3)
oranges = Item.new("orange", 1, 3)
ShoppingList.new(10, butter, bread, oranges)
rescue
  p $!.message
assert {$!.message == "You're spending too much!"}
end

puts "8. Error is raised if list goes over budget with #add method"
begin
butter = Item.new("butter", 5)
bread = Item.new("bread", 3)
oranges = Item.new("orange", 1, 3)
list = ShoppingList.new(10, butter, bread)
list.add(oranges)
rescue
  p $!.message
assert {$!.message == "You're spending too much!"}
end
