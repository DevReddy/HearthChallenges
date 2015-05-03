require 'test_helper'

class ChallengesControllerTest < ActionController::TestCase
  test "should get all" do
    get :all
    assert_response :success
  end

end
