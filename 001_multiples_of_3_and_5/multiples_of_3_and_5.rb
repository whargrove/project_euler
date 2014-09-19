def sum_of_multiples(integer)
	sum = 0
	(0...integer).each do |i|
		if i % 3 == 0 || i % 5 == 0
			sum += i
		end
	end
	return sum
end
