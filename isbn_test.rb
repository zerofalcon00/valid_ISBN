require_relative "isbn.rb"
require "minitest/autorun"

class ValidIsbn < Minitest::Test

	def test_empty_string_returns_false()
		assert_equal(false, valid_isbn?(""))
	end

	# def test_non_empty_string_returns_true
	# 	assert_equal(true, valid_isbn("0471958697"))
	# end
end