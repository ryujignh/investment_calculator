class CompoundCalculateService

  def calculate(initial_amount, years, return_rate)
    initial_amount = initial_amount.to_f
    years = years.to_f
    return_rate = return_rate.to_f * 0.01

    result = initial_amount * (1 + return_rate) ** years

    result.round(2)
  end

end