# frozen_string_literal: true

# This class has one_bit_code methods
class OneBitChallenge
  # return [nil]
  def print_name_cli
    print 'Type your name: '
    name = gets.chomp

    print 'Type your age: '
    age = gets.chomp.to_i

    puts "Name: #{name}\nAge: #{age}"
  end

  # @param name [String]
  # @param age [Integer]
  # @return [String]
  def print_info(name, age)
    "Your name is #{name}\nYou are #{age} years old"
  end

  def operate
    print 'First digit: '
    n1 = gets.chomp.to_i

    print 'Second digit: '
    n2 = gets.chomp.to_i

    sum = n1 + n2
    product = n1 * n2
    division = n1 / n2
    subtraction = n1 - n2

    puts "Sum: #{sum}"
    puts "Product: #{product}"
    puts "Division: #{division}"
    puts "Subtraction: #{subtraction}"
  end
end

challenge = OneBitChallenge.new
challenge.print_name_cli
challenge.print_info('Arthur', 999)
challenge.operate
