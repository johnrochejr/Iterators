# Print all words in the array but uppercased.
def print_capitals(words)
  words.each do |word|
    puts word.upcase
  end
end

# Double all numbers in the array and return a new array.
def double_it(numbers)
  numbers.map do |x|
    x * 2
  end
end

# Return an array of all even numbers in the given array.
def find_evens(numbers)
  numbers.select do |x|
    x % 2 == 0
  end
end

# Return the product of all numbers
# Do _NOT_ use numbers.product.
def product(numbers)
  numbers.reduce(1) do |acc, x|
    acc * x
  end
end

# Get all odd numbers from the given array, square them, and
# return a new array of those squares.
def square_only_odds(numbers)
  #numbers.select { |number| number % 2 != 0 }.map { |number| number * number}

  odd_numbers = numbers.select do |number|
    number % 2 != 0
  end

  squared_numbers = odd_numbers.map do |number|
    number * number
  end

  return squared_numbers
end

# Square all given numbers and sum them.
def sum_of_squares(numbers)
  numbers.map { |number| number * number}.reduce(0) { |acc, number| acc + number}
end


# Return a new array of the ordinals (1 -> 1st) of the numbers given.
def ordinals(numbers)
  numbers.map do |number|
    if number % 10 == 1
      "#{number}st"
    elsif number % 10 == 2
      "#{number}nd"
    elsif number % 10 == 3
      "#{number}rd"
    else
      "#{number}th"
    end
  end
end
