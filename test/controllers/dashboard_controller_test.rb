require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get dashboard_view_url
    assert_response :success
  end
end
