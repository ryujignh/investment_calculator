module InterestCalculateControllerHelper

  def calculate
    service = CompoundCalculateService.new
    initial_amount = params[:initial_amount]
    invest_years = params[:invest_years]
    return_rate = params[:return_rate]

    @future_value = service.calculate(initial_amount, invest_years, return_rate)

    respond_to do |format|
      format.js
    end

  end

end
