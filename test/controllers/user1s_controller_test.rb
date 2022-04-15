require "test_helper"

class User1sControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user1s_index_url
    assert_response :success
  end
end
