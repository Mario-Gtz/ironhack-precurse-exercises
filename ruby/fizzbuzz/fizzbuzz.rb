numbers = [*1..100]

numbers.each do |num|

	bang = num.to_s

	result = ""

	if num % 3 == 0
		result += "Fizz"
	end
	if num % 5 == 0
		result += "Buzz"
	end
	if bang[0] == "1"	
		result += "Bang!"
	end	

	if result.length > 0
		puts result
	else
		puts num
	end
end