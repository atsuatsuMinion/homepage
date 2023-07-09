require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get homes_top_url
    assert_response :success
  end

  test "should get team" do
    get homes_team_url
    assert_response :success
  end

  test "should get member" do
    get homes_member_url
    assert_response :success
  end

  test "should get results" do
    get homes_results_url
    assert_response :success
  end

  test "should get schedule" do
    get homes_schedule_url
    assert_response :success
  end

  test "should get inquiry" do
    get homes_inquiry_url
    assert_response :success
  end
end
