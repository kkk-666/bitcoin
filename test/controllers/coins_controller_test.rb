require 'test_helper'

class CoinsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get coins_list_url
    assert_response :success
  end

end
