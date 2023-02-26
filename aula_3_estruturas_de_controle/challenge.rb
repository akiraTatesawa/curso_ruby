# frozen_string_literal: true

# just a calculator class
class Calculator
  def init
    loop do
      puts "\nOperations available:"
      puts '(1) Addition'
      puts '(2) Subtraction'
      puts '(3) Multiplication'
      puts '(4) Division'
      puts '(0) Exit'
      print 'Choose an operation: '

      # @type [Float]
      operation = gets.chomp.to_f

      case operation
      when 0
        puts 'Calculator Closed!'
        break
      when 1
        result = sum

        puts "Result = #{result}"
      when 2
        result = subtract

        puts "Result = #{result}"
      when 3
        result = multiply

        puts "Result = #{result}"
      when 4
        result = divide

        puts "Result = #{result}"
      else
        puts 'Invalid operation. Try Again!'
      end
    end
  end

  private

  # Addition method
  #
  # @return [Float]
  def sum
    puts 'Operation: Addition'
    print 'First number: '
    num1 = gets.chomp.to_f

    print 'Second number: '
    num2 = gets.chomp.to_f

    num1 + num2
  end

  # Subtraction method
  #
  # @return [Float]
  def subtract
    puts 'Operation: Subtraction'
    print 'First number: '
    num1 = gets.chomp.to_f

    print 'Second number: '
    num2 = gets.chomp.to_f

    num1 - num2
  end

  # Multiplication method
  #
  # @return [Float]
  def multiply
    puts 'Operation: Multiplication'
    print 'First number: '
    num1 = gets.chomp.to_f

    print 'Second number: '
    num2 = gets.chomp.to_f

    num1 * num2
  end

  # Division method
  #
  # @return [Float]
  def divide
    puts 'Operation: Division'
    print 'First number: '
    num1 = gets.chomp.to_f

    print 'Second number: '
    num2 = gets.chomp.to_f

    num1 / num2
  end
end

Calculator.new.init
