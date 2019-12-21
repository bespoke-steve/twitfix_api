require 'test_helper'

class AliveControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alive_index_url
    assert_response :success
  end

end
