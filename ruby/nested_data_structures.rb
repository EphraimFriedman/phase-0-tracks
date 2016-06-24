menu = { 
	appitizers: { 
		appitizer_dishes: ["soup", "slider", "salad"],
		:appitizer_prices => {
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