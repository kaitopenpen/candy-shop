require 'test_helper'

class SweetControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sweet_new_url
    assert_response :success
  end

end
