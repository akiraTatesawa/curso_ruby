# frozen_string_literal: true

# Search for the keyword 'Apple' in a given list
#
# @param [Array<String>] fruit_list a list of fruits
# @return [Boolean]
def search_apple(fruit_list)
  print "Fruits List:\n#{fruit_list}"
  has_apple = false

  for fruit in fruit_list
    has_apple = true if fruit == 'Apple'
  end

  has_apple ? (puts "\nHas Apple!") : (puts "\nDoes not have Apple :(")

  has_apple
end

# Count how many apples there are in the list
#
# @param [Array<String>] fruits_list list of fruits
# @return [Integer] number of apples
def count_apples(fruits_list)
  # @type [Integer]
  apple_count = 0
  count = 0

  while count < fruits_list.length
    apple_count += 1 if fruits_list[count] == 'Apple'

    count += 1
  end

  puts "\nApple Count: #{apple_count}"
  apple_count
end

# Count how many apples there are in the list using loop do
#
# @param [Array<String>] fruits_list list of fruits
# @return [Integer] number of apples
def count_apples_2(fruits_list)
  apple_count = 0
  count = 0

  loop do
    break if count == fruits_list.length

    apple_count += 1 if fruits_list[count] == 'Apple'

    count += 1
  end

  puts "\nApple Count: #{apple_count}"
  apple_count
end

search_apple(%w[Apple Grape Banana])
count_apples(%w[Apple Apple Banana])
count_apples_2(%w[Apple Apple Orange Banana Apple])
