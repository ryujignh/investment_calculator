class CompoundCalculateService

  def calculate(initial_amount, years, return_rate)
    return_rate = return_rate * 0.01
    result = initial_amount * (1 + return_rate) ** years

    result.round(2)
  end

end