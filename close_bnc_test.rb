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

	def test_no_winning_tickets
	    my_number = "1357"
        winning_numbers = ["1234","5678","9012"]
        assert_equal(false , one_off(my_number, winning_numbers))
    end
       
    def test_close_match
    	my_number = "1357"
    	winning_numbers = ["1358"]
    	assert_equal(true, one_off(my_number, winning_numbers))
	end  

	def test_not_quite_close
		my_number = "1357"
    	winning_numbers = ["1449"]
    	assert_equal(false, one_off(my_number, winning_numbers))
	end  

    def test_winning_one_off
    	my_number = "1357"
    	winning_numbers = ["1358","3157","1350"]
    	assert_equal(true, one_off(my_number, winning_numbers))
	end
end


