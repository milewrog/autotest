require 'test_helper'

class TestResultsControllerTest < ActionController::TestCase
  setup do
    @test_result = test_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_result" do
    assert_difference('TestResult.count') do
      post :create, test_result: { passed: @test_result.passed, run_by_whom: @test_result.run_by_whom, system_under_test: @test_result.system_under_test, test_details: @test_result.test_details }
    end

    assert_redirected_to test_result_path(assigns(:test_result))
  end

  test "should show test_result" do
    get :show, id: @test_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_result
    assert_response :success
  end

  test "should update test_result" do
    patch :update, id: @test_result, test_result: { passed: @test_result.passed, run_by_whom: @test_result.run_by_whom, system_under_test: @test_result.system_under_test, test_details: @test_result.test_details }
    assert_redirected_to test_result_path(assigns(:test_result))
  end

  test "should destroy test_result" do
    assert_difference('TestResult.count', -1) do
      delete :destroy, id: @test_result
    end

    assert_redirected_to test_results_path
  end
end
