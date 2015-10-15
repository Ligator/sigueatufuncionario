require 'test_helper'

class MonthlyResultsControllerTest < ActionController::TestCase
  setup do
    @monthly_result = monthly_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monthly_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monthly_result" do
    assert_difference('MonthlyResult.count') do
      post :create, monthly_result: { agency: @monthly_result.agency, evaluation: @monthly_result.evaluation, functionay: @monthly_result.functionay, image: @monthly_result.image, place: @monthly_result.place, release: @monthly_result.release }
    end

    assert_redirected_to monthly_result_path(assigns(:monthly_result))
  end

  test "should show monthly_result" do
    get :show, id: @monthly_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monthly_result
    assert_response :success
  end

  test "should update monthly_result" do
    patch :update, id: @monthly_result, monthly_result: { agency: @monthly_result.agency, evaluation: @monthly_result.evaluation, functionay: @monthly_result.functionay, image: @monthly_result.image, place: @monthly_result.place, release: @monthly_result.release }
    assert_redirected_to monthly_result_path(assigns(:monthly_result))
  end

  test "should destroy monthly_result" do
    assert_difference('MonthlyResult.count', -1) do
      delete :destroy, id: @monthly_result
    end

    assert_redirected_to monthly_results_path
  end
end
