require 'test_helper'

class StacksControllerTest < ActionController::TestCase
  setup do
    @stack = stacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stack" do
    assert_difference('Stack.count') do
      post :create, stack: @stack.attributes
    end

    assert_redirected_to stack_path(assigns(:stack))
  end

  test "should show stack" do
    get :show, id: @stack.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stack.to_param
    assert_response :success
  end

  test "should update stack" do
    put :update, id: @stack.to_param, stack: @stack.attributes
    assert_redirected_to stack_path(assigns(:stack))
  end

  test "should destroy stack" do
    assert_difference('Stack.count', -1) do
      delete :destroy, id: @stack.to_param
    end

    assert_redirected_to stacks_path
  end
end
