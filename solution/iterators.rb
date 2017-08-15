# Print all words in the array but uppercased.
def print_capitals(words)
  words.each do |word|
    puts word.upcase
  end
end

# Double all numbers in the array and return a new array.
def double_it(numbers)
  numbers.map { |x| x * 2 }
end

# Return an array of all even numbers in the given array.
def find_evens(numbers)
  numbers.select { |x| x % 2 == 0 }
end

# Return the product of all numbers
def product(numbers)
  numbers.reduce(1) { |acc, x| acc * x }
end

# Get all odd numbers from the given array, square them, and
# return a new array of those squares.
def square_only_odds(numbers)
  numbers.select { |x| x % 2 == 1 }.map { |x| x * x }
end

# Square all given numbers and sum them.
def sum_of_squares(numbers)
  numbers.map { |x| x * x }.reduce(0) { |acc, x| acc + x }
end

# Return a new array of the ordinals (1 -> 1st) of the numbers given.
def ordinals(numbers)
  numbers.map do |x|
    if x % 10 == 1
      "#{x}st"
    elsif x % 10 == 2
      "#{x}nd"
    elsif x % 10 == 3
      "#{x}rd"
    else
      "#{x}th"
    end
  end
end
