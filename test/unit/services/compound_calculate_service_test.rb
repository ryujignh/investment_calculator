require_relative '../../test_helper'

class CompoundCalculateServiceTest < ActiveSupport::TestCase

  def setup
    @service = CompoundCalculateService.new
  end

  def test_calculate
    initial_amount = 5_000_000
    year = 1
    rate = 6.8

    result = @service.calculate(initial_amount, year, rate)
    assert_equal(5_340_000.00,
      result,
      "Should return 5_340_000 if invested for #{year} year")
  end

  def test_calculate_for_three_years
    initial_amount = 5_000_000
    year = 3
    rate = 6.8

    result = @service.calculate(initial_amount, year, rate)
    assert_equal(6_090_932.16,
      result,
      "Should return 6_090_932.16 if invested for #{year} year")
  end

  def test_calculate_for_five_years
    initial_amount = 5_000_000
    year = 5
    rate = 6.8

    result = @service.calculate(initial_amount, year, rate)
    assert_equal(6_947_463.40,
      result,
      "Should return 6_090_932.16 if invested for #{year} year")
  end
end