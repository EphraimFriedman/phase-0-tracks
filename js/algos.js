// find longest word

// loop through the array of words
// get the length of first word
// set longest word to first word 
// if second word is greater than length of first word  	
// 	set length to the second word's length
// 	set the longest word to the second word 
// return longest 

// function find_longest_word(array) {
// 	var current_longest_word_length = array[0].length
// 	var longest_word = array[0]

// 	for (var i = 1; i < array.length; i++) {
// 		if (array[i].length > current_longest_word_length) {
// 			current_longest_word_length = array[i].length
// 			longest_word = array[i]
// 		}
// 	}
// 	return "The longest word of this array is: " + longest_word
// }

// // check if objects match

// // loop through object
// // 	if object1 key and object1 value is equal to object2 key and object2 value
// // 		return true
// // 	otherwise 
// // 	return false


function matching_object(object1, object2) {

	for (var key in object1) {
		 
		 if (object1[key] == object2[key]) {
		 	result = true
		 	{break}
		 }
		 else {
		 	result = false
		 }
	}
	return result
}


// // DRIVER CODE

// // test find_longest_word function
// console.log(find_longest_word(["hi", "apple", "green", "my name is ephy"]))

// console.log(find_longest_word(["one", "two", "three", "four"]))


// test matching object function
h1 = {name: "bob", age: 27, food: "fast"}
h2 = {name: "bob", age: 23, boot: "fast"}

console.log(matching_object(h1, h2))

console.log(matching_object({color: "blue", eyes: "big", head: "small"}, {color: "green", eyes: "big", head: "large"}))

console.log(matching_object({word: "hello", sign: "turn left"}, {word: "bye", sign: "turn right"}))

console.log(matching_object({greet: "hello", left_or_right: "turn left"}, {greeting: "bye", direction: "turn right"}))

		





























