input_string = gets.chomp

puncuation_chars = [".", "?", "!", ";", ",", ":"]
puncuation_chars.each do |punctuation_char|
	input_string = input_string.sub(punctuation_char, " ")
end

ordered_a = input_string.split.sort{|a, b| a.upcase <=> b.upcase}
puts "#{ordered_a}"
