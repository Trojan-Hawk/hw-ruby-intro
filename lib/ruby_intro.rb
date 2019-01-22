# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  if arr.length == 0
    return sum
  else
    arr.each do |x|
      sum += x
    end
    return sum
  end
end

def max_2_sum arr
  firstHighest = 0
  secondHighest = 0
  if arr.length == 0
    return firstHighest
  elsif arr.length == 1
    return arr[0]
  else
    arr.each do |x|
      # if x is highest
      if x > firstHighest 
        # if firstHighest is the second highest
        if firstHighest > secondHighest
          secondHighest = firstHighest
        end
        # make x the highest
        firstHighest = x
      # if x is secondHighest
      elsif x > secondHighest
        secondHighest = x
      end
    end
    return firstHighest + secondHighest
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
