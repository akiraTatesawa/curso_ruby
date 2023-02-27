# frozen_string_literal: true

# Implementation of the .select method.
#
# @param [Array<Integer>] numbers
# @return [nil]
def select_array(numbers)
  numbers_greater2 = numbers.select do |number|
    number > 2
  end

  puts numbers_greater2
end

select_array([2, 2, 2, 9, 8, 7, 1, 2, 4])
