module InterestCalculateControllerHelper

  def calculate
    service = CompoundCalculateService.new
    initial_amount = params[:initial_amount] || 0
    invest_years = params[:invest_years] || 0
    return_rate = params[:return_rate] || 0

    future_value = service.calculate(initial_amount, invest_years, return_rate)
    @future_value_in_words = "If you invest ¥#{initial_amount} and hold it for #{invest_years} years at #{return_rate}% average return rate, your initial investment will become ¥#{future_value}."

    respond_to do |format|
      format.js
    end

  end

end
