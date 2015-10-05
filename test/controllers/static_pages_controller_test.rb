require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get api" do
    get :api
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
