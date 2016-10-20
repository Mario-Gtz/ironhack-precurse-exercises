def solve_cipher(string, shift)

	array = [*"A".."|"]

	encoded_string = ""

	chars_array = string.chars

	chars_array.each do |char|
		char_index = array.index(char)
		encoded_char_index = char_index + shift
		encoded_string += array[encoded_char_index]
	end
	encoded_string
end

def solve_sentence(string, shift = -3)

	words = string.split

	encoded_sentence = ""

	words.each do |word|
		encoded_word = solve_cipher(word, shift)
		encoded_sentence += (encoded_word + " ")
	end
	encoded_sentence

end

puts solve_sentence("p| uhdo qdph lv grqdog gxfn", -3)