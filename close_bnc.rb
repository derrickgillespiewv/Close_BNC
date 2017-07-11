# def lotto_func(a,b)
# a = "1357"
# b = ["1234","5678","9012","1357"].sample
# end 

def lotto_func(a, b)
same = [] 
b.each_with_index do |value, index|
	if a == value
		same << a
		p "You Win!"
	else
		p "You lose, buy more tickets!"
	end
end
same
end