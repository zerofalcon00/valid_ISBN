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
end