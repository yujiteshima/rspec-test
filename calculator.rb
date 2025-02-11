class Calculator
  def divide(a, b)
    if b == 0
      raise ArgumentError, 'Division by zero error'
    end
    a / b
  end
end