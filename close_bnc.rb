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


def one_off(a, b)
	index_position = 0
	count = 0
	
	b.each do |winning_ticket|
	count = 0
	index_position = 0
	4.times do 
		if a[index_position] == winning_ticket[index_position]
		count += 1
		end
		index_position += 1
	end
end
	count == 3
end


# def off_by_one(a, b)
#   count = 0
#   index_a = 0
#    b.length.times do
#    index_b = 0
#     b.length.times do
#       if a[index_a] == b[index_b]
#         count += 1
#       end
#       index_b+=1
#   end
#   index_a+=1
# end
#   count == b.length - 1
# end


# def three_out_four(a, b)
#   same = []
#   b.each do |y|
#     if off_by_one(a, y) == true
#       same << y
#     end
#   end
#   winning
# end

# one_off "1234", ["1234","5678", "9012", "5555"]