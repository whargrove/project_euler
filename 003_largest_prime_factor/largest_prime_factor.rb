# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

require "prime"

BIG_NUMBER = 600851475143

def largest_prime_factor(n)
  # Start at two because 1 is naturally a prime factor
  (2..Math.sqrt(n).to_i).each do |i|
    # checks if the number is a factor
    while n % i == 0
      # n redfined to new divisible
      n /= i
      puts "#{i} is a factor, let's test #{n}."
      if n == 1 || n == i
        return i
      end
    end
  end
end
