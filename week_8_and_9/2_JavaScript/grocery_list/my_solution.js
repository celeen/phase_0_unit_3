// U3.W8-9:


// I worked on this challenge [by myself].
//I need a greocery list
//I need to be able to set a budget for the list
//I need to be able to add and remove items from the list
//I would like to be able to associate a price and a quantity with each item on the list
//I would like to be able to add up the total cost of the items on my list
//Maybe I could even have an alert that notifies me when the total cost of the items on my list has exceeded the budget

// 2. Pseudocode
//create an object groceryList
//give a property, budget that is initially set to 0
//give a


// 3. Initial Solution

function item(itemName, price, quantity) {
	this.itemName = itemName;
	this.price = price;
	this.quantity = (typeof quantity === "undefined") ? 1 : quantity;
}


function shoppingList(budget, list) {
	this.budget = budget;
	this.list = (typeof list === "undefined") ? [] : list;

	this.consolidate = function(itemName) {
		// loop through list
		// compare itemName against each item.itemName
	}

	this.add = function(item) {
		if (this.list.length === 0) {
			this.list.push(item);
		} else {
			for (var alreadyThere in this.list) {
				if (this.list[alreadyThere].itemName === item.itemName) {
					this.list[alreadyThere].quantity += item.quantity;
					console.log("The contents of the grocery list after the if statement are: ") + console.log(this.list);
				} else {
					// break;
					this.list.push(item);
					console.log("Contents after the else statement are: ") + console.log(this.list);
				}
			}
		}
	}

	this.totalCost = function() {
		
		var sum = 0
		for (var i = 0; i < this.list.length; i++) {
		sum += (this["list"][i]["price"])*(this['list'][i]['quantity']);
		}
		return sum
	}

	this.remove = function(item) {
		for (var i = 0; i < this.list.length; i++) {
			if (this.list[i] === (item)) this.list.splice(i, 1);
		}
	}

}




// 4. Refactored Solution






// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
var groceryList = new shoppingList(50);
var apple = new item("apple", .6, 2);
var orange = new item("orange", .5);
var moarOranges = new item("orange", .5, 100);
// console.log("groceryList === " + groceryList.list);
console.log("_______________________");
console.log("adding 2 apples...");
console.log("_______________________");
groceryList.add(apple);
console.log("_______________________");
console.log("_______________________");
console.log("adding 1 orange");
console.log("_______________________");
groceryList.add(orange);
console.log("_______________________");
console.log("_______________________");
console.log("adding 100 oranges");
console.log("_______________________");
groceryList.add(moarOranges);
console.log("_______________________");
console.log("_______________________");
console.log(groceryList.list);
groceryList.remove(moarOranges);
console.log(groceryList.list);
console.log(groceryList.totalCost());





// 5. Reflection
//Was going really smoothly; I definitely have a more solid understanding of javascript after this exercise.
//Zach came up with the idea to make sure that our add method will add to the quantity of an already existing item if we try to add an item with the same name as what's already on the list...
//but it just kept exploding.
//What it looks like is happening is that after an item is added, the loop can tell that there's another item, and iterates for the new item after adding it, instead of just quitting at the end of the list as it was at the beginning. (I think this is different from what ruby would do... but my brain hurts a little right now, and I'm not too sure.)
//After a while if tooling with it, we were at a loss as to how to solve it. So, we decided to trust the user to know to just add to the quantity, for now.
//This exercise made my head hurt a little bit, and I hope I retain things from it. I'm sure I will.
//Also, it has started me feeling afraid that I will lose my ability to communicate effectively while studying. I suppose that it's natural to start losing some intellectual capacity after working it really hard, and getting tired.
//___________________________
//After some retooling on my own I have learned:
//In the form of for loop that we have, the first variable accesses the INDEX of the array, not the item itself.
//When you combine a string with an object in console logs, the object return [object Object], or some variation. You must print two seperate console log statements in order to get javascript to print the contents of the object

