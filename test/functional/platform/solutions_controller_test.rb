require 'test_helper'

class Platform::SolutionsControllerTest < ActionController::TestCase
  setup do
    @platform_solution = platform_solutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:platform_solutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create platform_solution" do
    assert_difference('Platform::Solution.count') do
      post :create, platform_solution: { attach: @platform_solution.attach, solution: @platform_solution.solution, status: @platform_solution.status, version: @platform_solution.version }
    end

    assert_redirected_to platform_solution_path(assigns(:platform_solution))
  end

  test "should show platform_solution" do
    get :show, id: @platform_solution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @platform_solution
    assert_response :success
  end

  test "should update platform_solution" do
    put :update, id: @platform_solution, platform_solution: { attach: @platform_solution.attach, solution: @platform_solution.solution, status: @platform_solution.status, version: @platform_solution.version }
    assert_redirected_to platform_solution_path(assigns(:platform_solution))
  end

  test "should destroy platform_solution" do
    assert_difference('Platform::Solution.count', -1) do
      delete :destroy, id: @platform_solution
    end

    assert_redirected_to platform_solutions_path
  end
end
