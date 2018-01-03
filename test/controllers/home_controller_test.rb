require './test/test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  def test_index
    get '/'
    assert_template('home/index')
    assert_response :success
  end

  def test_calculate
    get calculate_url({:initial_amount => 5_000_000, :years => 5, :return_rate => 6.8}), xhr: true

    assert_equal(6_947_463.40,
      json_response['future_value'],
      "Should return the calculated future value of the initial amount")
    assert_response :success
  end

end
