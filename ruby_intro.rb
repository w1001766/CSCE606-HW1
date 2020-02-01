# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return(arr.inject(0){|sum,x| sum + x})
end

def max_2_sum arr
	arr.sort.last(2).sum
end

def sum_to_n? arr, n
	return true if arr.uniq.combination(2).detect{|x,y| x+y == n} != nil
	return false if arr.uniq.combination(2).detect{|x,y| x+y == n} == nil

end

# Part 2

def hello(name)
	"Hello, "+name
end

def starts_with_consonant? s

	!!(s[0] =~ /[b-hj-np-tv-z]+/i)
end

def binary_multiple_of_4? s
  if(s =~ /\b[01]+\b/ && s.to_i % 4 ==0)
  	return true
  else
  	return false
  end
end

# Part 3

class BookInStock
	attr_accessor :isbn, :price

	def initialize isbn, price
		raise ArgumentError if isbn == nil || isbn.length ==0
		raise ArgumentError if price <= 0


		self.isbn = isbn
		self.price = price
		
	end

	def price_as_string
		format("$%.2f",self.price)
	end

end
