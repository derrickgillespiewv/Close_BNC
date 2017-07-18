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
    	winning_numbers = ["1358","7777","1350"]
    	assert_equal(true, one_off(my_number, winning_numbers))
	end

	def test_winning_one_off_long
    	my_number = "13579"
    	winning_numbers = ["13589","77777","13509"]
    	assert_equal(true, one_off(my_number, winning_numbers))
	end

	def test_three_out_four
		my_number = "1357"
    	winning_numbers = ["1358","7777","1350"]
    	assert_equal(["1358","1350"], three_out_four(my_number, winning_numbers))
    end

	def test_three_out_four_remix
		my_number = "1357"
    	winning_numbers = ["1347","7777","1257"]
    	assert_equal(["1347","1257"], three_out_four(my_number, winning_numbers))
    end

	def test_three_out_four_single
		my_number = "1357"
    	winning_numbers = ["1358"]
    	assert_equal(["1358"], three_out_four(my_number, winning_numbers))
    end

    def test_X_of_Y
    	my_number = "13579"
    	winning_numbers = ["13570","77777","13509"]
    	assert_equal(["13570","13509"], three_out_four(my_number, winning_numbers))
    end


    def test_X_of_Y_remix_1
    	my_number = "135791"
    	winning_numbers = ["135792","777677","135701"]
    	assert_equal(["135792","135701"], three_out_four(my_number, winning_numbers))
    end

   def test_short_in_winning_1
    	my_number = "135791"
    	winning_numbers = ["135792","7777","135701"]
    	assert_equal(["135792","135701"], three_out_four(my_number, winning_numbers))
    end
end

