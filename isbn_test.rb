require_relative "isbn.rb"
require "minitest/autorun"

class TestValidIsbn < Minitest::Test

	def test_empty_string_returns_false()
		assert_equal(false, valid_isbn_length?(""))
	end

	def test_valid_10_digit_isbn_string_returns_true()
		assert_equal(true, valid_isbn_length?("0471958697"))
	end

	def test_an_invalid_10_digit_isbn
		skip("no") 
		assert_equal(false, valid_isbn_length("0471958699"))
	end
end

class TestConvertStringToArray < Minitest::Test

	def test_empty_string_returns_empty_array
		assert_equal([], string_to_array(""))
	end

	def test_string_returns_returns_array
		assert_equal(["1","2","3","4","5"], string_to_array("12345"))
	end
end

class TestToCheckForDashOrSpace < Minitest::Test
	
	def test_string_with_space_returns_string_with_no_space
		assert_equal("12345", string_remove_space_or_dash("123 45"))
	end

	def test_string_with_dash_returns_string_with_no_dash
		assert_equal("12345", string_remove_space_or_dash("123-45"))
	end

	def test_string_with_dash_and_space
		assert_equal("0123456789", string_remove_space_or_dash(" -01-2 3  4-- -56789"))
	end
end

class TestTheSumOfIsbn < Minitest::Test

	def test_the_sum_of_an_isbn
		assert_equal([7, 8, 6, 4, 15, 54, 28, 56, 54], multiply_the_element_by_position_and_return_array_of_numbers(["7","4","2","1","3","9","4","7","6","1"]))
	end

	def test_adding_numbers_in_array
		assert_equal(232, adding_array([7, 8, 6, 4, 15, 54, 28, 56, 54]))
	end

	def test_modulos_of_sum
		assert_equal(1, modulos_of_sum(232))
	end

	def test_modulos_of_sum_equals_x
		assert_equal("X", modulos_of_sum(21))
	end

end