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

    print "The lunch is #{lunch} today!"
  end

  # Example of Unless Modifier
  # @return [nil]
  def unless_execute
    change_check = 'NO'

    status = 'closed'
    change_check = 'OK' unless status == 'open'

    print "Product Status: #{status}"
    print 'Can the product be changed?'
    print change_check
  end

  # Example of Case Statement
  # @return [nil]
  def case_execute
    print 'Digite seu mês de nascença (1-12): '
    month = gets.chomp.to_i

    case month
    when 1..3
      print 'você nasceu no começo do ano'
    when 9..12
      print 'você nasceu no final do ano'
    when 4..6
      print 'você nasceu na primeira metade do ano'
    when 7..9
      print 'você nasceu na segunda metade do ano'
    else
      print 'Não foi possível identificar...'
    end
  end
end

ConditionalStructure.new.if_execute
ConditionalStructure.new.unless_execute
ConditionalStructure.new.case_execute
