require_relative "new_isbn_code.rb"
require "minitest/autorun"

class TestValidIsbn < Minitest::Test

	def test_a_valid_10_digit_isbn
		assert_equal(true, valid_isbn("7421394761"))
	end

	def test_an_invalid_10_digit_isbn
		assert_equal(false, valid_isbn("7421394769"))
	end

	def test_a_valid_10_digit_isbn2
		assert_equal(true, valid_isbn("0471958697"))
	end

	def test_a_invalid_10_digit_isbn2
		assert_equal(false, valid_isbn("0471958692"))
	end
	
	def test_valid_x
		assert_equal(true, valid_isbn("877195869x"))
	end

	def test_valid_isbn_with_dash_and_space
		assert_equal(true, valid_isbn("8  7-- 7 -195-- -869x"))
	end

	def test_an_invalid_isbn_with_dash_and_space
		assert_equal(false, valid_isbn("8  7-- 7 -195-- -869--0"))
	end

	def test_an_invalid_isbn_with_dash_and_space
		assert_equal(false, valid_isbn("8  B-- 7 -195-- -869--0"))
	end

	def test_a_valid_10_digit_isbn0
		assert_equal(false, valid_isbn("B471958697"))
	end
end

