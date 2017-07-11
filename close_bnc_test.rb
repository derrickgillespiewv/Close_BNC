require "minitest/autorun"
require_relative "close_bnc.rb"
class TestClose_BNC < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_winning_num
		my_number = "1357"
		winning_numbers = ["1234","5678","9012","1357"]
		assert_equal(["1357"], lotto_func(my_number, winning_numbers))
	end 
end 	