class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    begin
      raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
      raise ArgumentError unless first_operand.is_a?(Integer)
      raise ArgumentError unless second_operand.is_a?(Integer)
      raise ZeroDivisionError if operation == "/" && second_operand == 0
      "#{first_operand} #{operation} #{second_operand} = #{first_operand.public_send(operation,second_operand)}"
    rescue ZeroDivisionError
      "Division by zero is not allowed."
    end
  end
  
  class UnsupportedOperation < StandardError
  end
end

