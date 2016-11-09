def valid_isbn?(isbn_string)
	#main entry function. Take any string, and returns if it's a valid isbn, otherwise false
	isbn_no_spaces_or_dashes = remove_spaces_and_dashes(isbn_sting)
	valid_isbn10?(isbn_no_spaces_or_dashes) || isbn_no_spaces_or_dashes.length == 13
end

def valid_isbn10?(isbn_no_spaces_or_dashes)
	length_10?(isbn_no_spaces_or_dashes) && no_non_digits(isbn_no_spaces_or_dashes.chop) == calculate_isbn10_sumcheck(isbn_no_spaces_or_dashes)
end

def length_10?(isbn_no_spaces_or_dashes)
	isbn_no_spaces_or_dashes.length == 10
end

def no_non_digits?(string)
	if string =~/\D/
		false
	else
		true
	end
end

def calculate_isbn10_sumcheck(isbn_no_spaces_or_dashes)
	#take a 10 digit string and calculate the sumcheck. return a string of the sumcheck.
	first_nine_digits = isbn_no_spaces_or_dashes.chop
	isbn_array = convert_string_to_array(first_nine_digits)
	sumcheck = generate_raw_isbn10_sumcheck(isbn_array)
	sumcheck == "10" ? "x" : sumcheck
end

def generate_raw_isbn10_sumcheck(isbn_array)
	sum_digits_multiplied_by_position = 0
	isbn_array.each_with_index do |value, index|
		sum_digits_multiplied_by_position += value.to_i * (index + 1)
	end
	sumcheck = sum_digits_multiplied_by_position % 11
	sumcheck = sumcheck.to_s
end

def convert_string_to_array(string)
	string.split("")
end


def remove_spaces_and_dashes(isbn_sting)
	#takes a string and returns a string with spaces and dashes removed
	isbn_string.gsub!(" ", "")
	isbn_string.gsub!("-", "")
	isbn_string
end