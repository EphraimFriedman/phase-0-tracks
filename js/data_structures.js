var colors = ["blue", "red", "green", "yellow"];

var horse_names = ["ed", "blaze", "wildfire", "dallas"];

colors.push("orange")

horse_names.push("duke")

console.log(colors);

console.log(horse_names);

// create an epmty hash 
// loop through horse_names 

// assign key value pair using index number

var horse_hash = {};

for (var i = 0; i < colors.length; i++) {
	horse_hash[horse_names[i]] = colors[i]
};

console.log(horse_hash);

function Car(name, price, color, working) {
	this.name = name;
	this.price = price;
	this.color = color;	
	this.working = working;

	if (this.working){
		this.response = "it is working"
	}
	else {
		this.response = "it is not working"
	}

	this.listing = function(){
		console.log(this.name + " costs " + this.price + " and the color is " + this.color + " and " + this.response)
	}
}

var car1 = new Car("honda", 20000, "black", true);

console.log(car1);

car1.listing();

var car2 = new Car("Toyota", 15000, "white", false)

car2.listing()

var	car3 = new Car("Lexus", 50000, "Silver", true)

car3.listing();
