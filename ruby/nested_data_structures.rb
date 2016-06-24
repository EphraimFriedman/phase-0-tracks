menu = { 
	appetizers: { 
		appetizer_dishes: ["soup", "slider", "salad"],
		:appetizer_prices => {
			soups: 8, 
			sliders: 10,
			salads: 11,
		}
	},
	entrees: {
		entree_dishes: ["chicken", "steak", "lamb"],
		entree_prices: {
			chicken: 13,
			steak: 38,
			lamb: 43
		}

	},
	desserts: {
		dessert_dishes: ["cake", "pie", "ice cream"],
		dessert_prices: {
			cake: 7,
			pie: 7,
			ice_cream: 4.5
		}

	},
	drinks: {
		soft_drinks: ["coke," "sprite", "pepsi"],
		wines: ["red wine", "white_wine"],
		coctails: ["manhattan", "whiskey sour", "martini"],
		drink_prices: {
			soft_drink: 2.5,
			wine: 7,
			coctail: 9
		}
	}
}

p menu

# print chichen from entree dishes
puts "printing chicken from entree menu."
p menu[:entrees][:entree_dishes][0]

# change price of ice cream
puts "Before change:"

p menu[:desserts][:dessert_prices][:ice_cream]

puts "After change:"

menu[:desserts][:dessert_prices][:ice_cream] = 5
p menu[:desserts][:dessert_prices][:ice_cream]

# delete whiskey sour from cocktail menu.
puts "Before change:"

p menu[:drinks][:coctails]

menu[:drinks][:coctails].delete_at(1)
puts "after change:"
p menu[:drinks][:coctails]

# add appetizer dish
puts "Before change:"
p menu[:appetizers][:appetizer_dishes]

menu[:appetizers][:appetizer_dishes].push("garlic_bread")

puts "After change:"
p menu[:appetizers][:appetizer_dishes]











