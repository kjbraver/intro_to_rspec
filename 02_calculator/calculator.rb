def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(numbers)
	numbers.inject(0) do |sum, num|
		sum += num
	end	
end

def multiply(first_number, second_number, *more_numbers) 
	product = first_number * second_number
	
	if(more_numbers.length > 0)
		product *= more_numbers.inject(1) do |sub_product, num|
			sub_product *= num
		end
	end

	return product
end

#in cases where both base and exponent are positive, non-zero ints
def power(base, exponent)
	power = 1
	exponent.times {power *= base}
	return power
end

def factorial(number)
	if(number == 0)
		return 1
	else
		factorial = 1
		number.times do |count|
			factorial *= count + 1
		end
		return factorial
	end
end