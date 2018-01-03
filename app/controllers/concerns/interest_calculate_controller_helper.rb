module InterestCalculateControllerHelper

  def calculate
    service = CompoundCalculateService.new
    initial_amount = params[:initial_amount]
    years = params[:years]
    return_rate = params[:return_rate]
    future_value = service.calculate(initial_amount, years, return_rate)

    render(:json => {:future_value => future_value})
  end

end
