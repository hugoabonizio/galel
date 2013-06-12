require 'test_helper'

class Platform::ProblemsControllerTest < ActionController::TestCase
  setup do
    @platform_problem = platform_problems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:platform_problems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create platform_problem" do
    assert_difference('Platform::Problem.count') do
      post :create, platform_problem: { description: @platform_problem.description, ident: @platform_problem.ident, problem: @platform_problem.problem }
    end

    assert_redirected_to platform_problem_path(assigns(:platform_problem))
  end

  test "should show platform_problem" do
    get :show, id: @platform_problem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @platform_problem
    assert_response :success
  end

  test "should update platform_problem" do
    put :update, id: @platform_problem, platform_problem: { description: @platform_problem.description, ident: @platform_problem.ident, problem: @platform_problem.problem }
    assert_redirected_to platform_problem_path(assigns(:platform_problem))
  end

  test "should destroy platform_problem" do
    assert_difference('Platform::Problem.count', -1) do
      delete :destroy, id: @platform_problem
    end

    assert_redirected_to platform_problems_path
  end
end
