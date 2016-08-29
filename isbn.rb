def valid_isbn_length?(num)
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
		if index < 9
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
	sum % 11
end





