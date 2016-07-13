// function to reverse that takes a string
	// loop backward through string 
	// add each letter to empty string
	// return reversed string outside loop

function reverse(string) {
	var word = ""
	for (var i = string.length -1 ; i >= 0; i--) {
		word += string[i];
	}
	return word;
}

var reveresed_word = reverse("hello");

// Test for else statement 
//reveresed_word = reverse("Ephraim");


if (reveresed_word.length < 6) {
	console.log(reveresed_word);
} else {
	console.log("Your word is too long! try again!");
}