# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_product
	max_palindrome = 0
	a = 999

	while a > 99
		b = 999
		while b >= a
			prod = a*b
			if prod > max_palindrome && palindrome?(prod)
				max_palindrome = prod
			end
			b -= 1
		end
		a -= 1
	end

	puts max_palindrome
end

def palindrome?(i)
  return i.to_s == i.to_s.reverse ? true : false
end
