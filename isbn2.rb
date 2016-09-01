require "sinatra"
require_relative "isbn_functions.rb"

get "/" do 
	erb :ask_isbn
end

post "ask" do
	"hello world"
end
	# isbn = params[:isbn]
	# isbn_a = string_remove_space_or_dash(isbn)
	
	# if valid_isbn_length_10?(isbn_a) == false
	# 	"Your ISBN is not real"
	# elsif
	# 	isbn_b = valid_isbn_length_10(isbn_a)
	# 	isbn_c = string_to_array(isbn_b)
	# 	# array = string_remove_space_or_dash(isbn_b)
	# 	sum = adding_array(isbn_c)
	# 	check_sum = modulos_of_sum(sum)
	# 	check_sum == isbn[9]
	# 	"Your ISBN is real"
	# elsif check_sum == isbn[9]
	# 	"Your ISBN isnt real"
	# end





# 	i
# 		valid_isbn_length_10? == true
# 				isbn_a = valid_isbn_length_10?

# 		isbn_a = string_to_array(isbn)
# 		isbn_b = string_remove_space_or_dash(isbn_a)
# 		array = multiply_the_element_by_position_and_return_array_of_numbers(isbn_b)
# 		sum = adding_array(array)		
# 		check_sum = modulos_of_sum(sum)
# 		check_sum == isbn[9]
# 	end
# end