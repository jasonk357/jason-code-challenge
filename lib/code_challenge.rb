# frozen_string_literal: true

# Trevco Code Challenge
# Fill in the following function to make the test pass
# You can run test with: ruby -Ilib:test test/test_code_challenge.rb


class CodeChallenge
  # Write a function that determines if a string starts with an upper-case letter A-Z.
  def start_with_uppercase_letter?(string)
    string =~ /^[A-Z]/
  end

  # Write a function that determines the area of a circle given the radius.
  def area_of_circle(radius)
    Math::PI*radius**2
  end

  # Write a function to add up all the values in an array.
  def sum_array(array)
    array.sum
  end

  # Write a function that determines if a string is a palindrome.
  def palindrome?(string)
    str = string.downcase
    str.reverse == str
  end

  # Write a recursive function to determine the Nth Fibonacci Number in the Fibonacci sequence
  def nth_fibonacci(nth)
    nth <= 1 ? nth : (nth_fibonacci(nth - 1) + nth_fibonacci(nth - 2))
  end

  # Write a function that takes and array of numbers, multiplies each them by their index, and writes it's values to a csv.
  # The csv should have have 3 columns. index, number, and product.
  def write_array_to_csv(array)
    filename = 'test.csv' # test expects this filename
    require "csv"
    CSV.open(filename, "w") do |csv|
      csv << ["index", "number", "product"]
      array.each_with_index do |n, i|
        csv << [i, n, n*i]
      end
    end
  end
end
