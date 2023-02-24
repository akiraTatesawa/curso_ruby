# frozen_string_literal: true

# This class executes conditional structures
class ConditionalStructure
  # Example of If...Else Statement
  # @return [nil]
  def if_execute
    day = 'Sunday'

    lunch = if day == 'Sunday'
              'Special'
            elsif day == 'Holyday'
              'Fried Eggs'
            else
              'normal'
            end

    puts "The lunch is #{lunch} today!"
  end

  # Example of Unless Modifier
  # @return [nil]
  def unless_execute
    change_check = 'NO'

    status = 'closed'
    change_check = 'OK' unless status == 'open'

    puts "Product Status: #{status}"
    puts 'Can the product be changed?'
    puts change_check
  end

  # Example of Case Statement
  # @return [nil]
  def case_execute
    print 'Digite seu mês de nascença (1-12): '
    month = gets.chomp.to_i

    case month
    when 1..3
      puts 'você nasceu no começo do ano'
    when 9..12
      puts 'você nasceu no final do ano'
    when 4..6
      puts 'você nasceu na primeira metade do ano'
    when 7..9
      puts 'você nasceu na segunda metade do ano'
    else
      puts 'Não foi possível identificar...'
    end
  end
end

ConditionalStructure.new.if_execute
ConditionalStructure.new.unless_execute
ConditionalStructure.new.case_execute
