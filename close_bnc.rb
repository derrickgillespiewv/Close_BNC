# def lotto_func(a,b)
# a = "1357"
# b = ["1234","5678","9012","1357"].sample
# end 

# def lotto_func(a, b)
# same = [] 
# b.each_with_index do |value, index|
# 	if a == value
# 		same << a
# 		p "You Win!"
# 	else
# 		p "You lose, buy more tickets!"
# 	end
# end
# same
# end

# This was the first task.
def lotto_func(a, b)
same = [] 
b.each_with_index do |value, index|
	if a == value
		same << a
		# p "You Win!"
	else
		# p "You lose, buy more tickets!"
	end
end
same
end

#This was checking for 3/4 numbers.
def one_off(a, b)
	index_position = 0
	count = 0

	b.each do |winning_ticket|
	count = 0
	index_position = 0
	a.length.times do 
		if a[index_position] == winning_ticket[index_position]
		count += 1
		end
		index_position += 1
	end
end
	count == a.length - 1
end

# This was first 3/4 numbers that are returned. It now returns numbers that are x-1 the same. 
def three_out_four(a, b)
	matches = []
	index_position = 0
	count = 0
	
	b.each do |winning_ticket|
		count = 0
		index_position = 0
		a.length.times do 
			if a[index_position] == winning_ticket[index_position]
				count += 1
			end
			index_position += 1
		end

		if count == winning_ticket.length - 1
		matches << winning_ticket
		end
	end

	# if count == a.length - 1	
# end
 matches
end

# one_off "1234", ["1234","5678", "9012", "5555"]