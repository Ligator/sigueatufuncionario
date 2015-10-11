require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post :create, question: { agency_contact: @question.agency_contact, agency_description: @question.agency_description, agency_target: @question.agency_target, functionary_contact: @question.functionary_contact, functionary_experience: @question.functionary_experience, functionary_functions: @question.functionary_functions, functionary_salary: @question.functionary_salary, functionary_schooling: @question.functionary_schooling, question: @question.question }
    end

    assert_redirected_to question_path(assigns(:question))
  end

  test "should show question" do
    get :show, id: @question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question
    assert_response :success
  end

  test "should update question" do
    patch :update, id: @question, question: { agency_contact: @question.agency_contact, agency_description: @question.agency_description, agency_target: @question.agency_target, functionary_contact: @question.functionary_contact, functionary_experience: @question.functionary_experience, functionary_functions: @question.functionary_functions, functionary_salary: @question.functionary_salary, functionary_schooling: @question.functionary_schooling, question: @question.question }
    assert_redirected_to question_path(assigns(:question))
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question
    end

    assert_redirected_to questions_path
  end
end
