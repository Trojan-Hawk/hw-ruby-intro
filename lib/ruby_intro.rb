# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  if arr.empty?
    return sum
  else
    arr.each do |x|
      sum += x
    end
    return sum
  end
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr = arr.sort! { |x,y| y <=> x } 
    firstHighest = arr[0]
    secondHighest = arr[1]
    return firstHighest + secondHighest
  end
end

def sum_to_n? arr, n
  if arr.empty?
    return false
  elsif arr.length == 1
    return false
  else
    # counter
    count = 0
    # sort from low to high
    arr = arr.sort! { |x,y| x <=> y }
    arr.each do |x|
      if x >= n 
        return false
      end
      arr.each do |y|
        if arr.rindex(y) == count
          # skip the same index
        elsif x + y == n
          return true
        end
      end
      count += 1
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.empty?
    return false
  end
  # array of consonants (Upper and lower)
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  # is the first character a letter (REGEX)
  if s[0, 1] =~ /[[:alpha:]]/
    # if it is not a vowel
    if vowels.find_index(s[0, 1]) == nil
      return true
    end
  end
  return false
end

def binary_multiple_of_4? 
  if s.empty?
    return false
  end
  # factor var
  factor = 1
  total = 0
  # Reverse the binary string
  s = s.reverse
  # multiply the factor by 2 for each step through the binary string
  s.split('').each do |x| 
    if x == "0"
      # add nothing to total
    elsif x == "1"
      total += factor
    else
      # character is not binary(not 0 || 1)
      return false
    end
    factor *= 2
  end
  # if no remainder when dividing by 4 is multiple
  if total % 4 == 0
    return true
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)  
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    @isbn = isbn  
    @price = price  
  end
  
  def price_as_string
    price_string = price.to_s
    
    return "$%.2f" % price_string
  end
  
  def isbn
    return @isbn
  end
  
  def price
    return @price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
end
