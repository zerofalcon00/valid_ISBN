def valid_isbn_length_10?(num)
	if num.length == 10
		true
	else
		false
	end
end

def string_to_array(string)
	string.split("")
end

def string_remove_space_or_dash(string)
	remove = [" ", "-"]

	remove.each do |symbol|
		string.delete! symbol  
	end
	string	
end

def multiply_the_element_by_position_and_return_array_of_numbers(array_of_strings)
	returned_array = []
	
	array_of_strings.each_with_index do |value, index|
		if index =< 8
			return_value = value.to_i * (index + 1)
			returned_array.push(return_value)
		end
	end
	returned_array
end

def adding_array(array)
	array.inject(:+)
end

def modulos_of_sum(sum)
	checksum = sum % 11

	if checksum == 10
		"X"
	else
		checksum
	end
end

def test_if_10_digit_isbn_is_real(isbn)

	if 
		valid_isbn_length_10?(isbn) == true
				isbn_a = valid_isbn_length_10?

		isbn_b = string_to_array(isbn_a)
		isbn_c = string_remove_space_or_dash(isbn_b)
		array = multiply_the_element_by_position_and_return_array_of_numbers(isbn_c)
		sum = adding_array(array)		
		check_sum = modulos_of_sum(sum)
		check_sum == isbn[9]
				true
	end
end




