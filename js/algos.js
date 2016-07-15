// find longest word


// loop through the array of words
// get the length of first word
// set longest word to first word 
// if first word is greater than length of word  	
// 	set longer-word to the new length
// 	set the new word's to the longest word 
// return longest 

function find_longest_word(array) {
	var current_longest_word_length = array[0].length
	var longest_word = array[0]

	for (var i = 1; i < array.length; i++) {
		if (array[i].length > current_longest_word_length) {
			current_longest_word_length = array[i].length
			longest_word = array[i]
		}
	}
	return "The longest word of this array is: " + longest_word
}




console.log(find_longest_word(["hi", "apple", "green", "my name is ephy"]))

console.log(find_longest_word(["one", "two", "three", "four"]))

