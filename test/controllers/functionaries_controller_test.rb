require 'test_helper'

class FunctionariesControllerTest < ActionController::TestCase
  setup do
    @functionary = functionaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:functionaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create functionary" do
    assert_difference('Functionary.count') do
      post :create, functionary: { agency_id: @functionary.agency_id, charge: @functionary.charge, evaluation: @functionary.evaluation, experience: @functionary.experience, fname: @functionary.fname, lname: @functionary.lname, photo: @functionary.photo, salary: @functionary.salary, schooling: @functionary.schooling }
    end

    assert_redirected_to functionary_path(assigns(:functionary))
  end

  test "should show functionary" do
    get :show, id: @functionary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @functionary
    assert_response :success
  end

  test "should update functionary" do
    patch :update, id: @functionary, functionary: { agency_id: @functionary.agency_id, charge: @functionary.charge, evaluation: @functionary.evaluation, experience: @functionary.experience, fname: @functionary.fname, lname: @functionary.lname, photo: @functionary.photo, salary: @functionary.salary, schooling: @functionary.schooling }
    assert_redirected_to functionary_path(assigns(:functionary))
  end

  test "should destroy functionary" do
    assert_difference('Functionary.count', -1) do
      delete :destroy, id: @functionary
    end

    assert_redirected_to functionaries_path
  end
end
