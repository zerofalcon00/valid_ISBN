def valid_isbn(num)
	remove = [" ", "-"]
	returned_array = []
	
	remove.each do |symbol|
	   	num.delete! symbol
	end

	if num.length == 10
	     
	   	string = num.split("")
	   	string.each_with_index do |value, index|
	   		if index < 9
	   			return_value = value.to_i * (index + 1)
	   			returned_array.push(return_value)
	   		end
	   	end
	end
	 	returned_array = returned_array.inject(:+)
	   		check_sum = returned_array % 11
	   		if num[9] == "x" || num[9] == "X"
	   			num[9] = "10"
				check_sum.to_s == num[9]
	   			true
	   		elsif check_sum.to_s == num[9]
	   			true
	   		else
	   			false
	   		end	
	   end
