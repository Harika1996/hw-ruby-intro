# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sum(arr.sort.last(2))
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  if arr.combination(2).any? {|a, b| a + b == n }
    return true
  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if (s[0] =~ /[bcdfghjklmnpqrstvwxyz]+/i)
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if s =~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0 
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    sprintf("$%.2f", @price)
  end
end
