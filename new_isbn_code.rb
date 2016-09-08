require 'csv'

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

def isbn_file_check
	file = "input_isbn_file.csv"
	output_with_results = "output_with_results_isbn_file.csv"
	file_new = File.open(output_with_results, "w")

	CSV.foreach(file) do |row|

		if row[1] == " ISBN"
			result = "CHECK"
		elsif valid_isbn(row[1]) == true
			result = "valid"
		else
			result = "invalid"
		end

	file_new << row[0] + ", " + row[1] + ", " + result + "\n"
	end
	file_new.close
end
isbn_file_check