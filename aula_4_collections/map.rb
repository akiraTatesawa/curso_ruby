# frozen_string_literal: true

# Implementation of the map method on an array of numbers.
#
# @param [Array<Integer>] numbers
# @return [nil] <description>
def map_array(numbers)
  numbers_doubled = numbers.map do |number|
    number * 2
  end

  puts numbers_doubled
end

map_array([1, 2, 3, 4, 5])
