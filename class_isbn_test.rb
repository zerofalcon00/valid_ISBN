require_relative "class_isbn.rb"
require "minitest/autorun"

class Testvalidisbn < Minitest::Test
	def

class TestISBN10Sumcheck < Minitest::Test
	def test_sumcheck_for_0471958697_is_7
		assert_equal("7", calculate_isbn10_sumcheck("0471958697"))
	end	

	def test_sumcheck_for_0471958697_is_8
		assert_equal("8", calculate_isbn10_sumcheck("1471958697"))
	end	

	def test_sumcheck_for_0471958697_is_x
		assert_equal("x", calculate_isbn10_sumcheck("3471958697"))
	end	
end

class Testcheckalldigits < Minitest::Test
	def test_all_digits_return_true
		assert_equal(true, no_non_digits?("12345"))
	end

	def test_contains_nondigit_returns_false
		assert_equal(false, no_non_digits?("12!45"))
	end
end