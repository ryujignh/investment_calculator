require './test/test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  def test_index
    get '/'
    assert_template('home/index')
    assert_response :success

  end

end
