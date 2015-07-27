require 'test_helper'

class RkScaffoldsControllerTest < ActionController::TestCase
  setup do
    @rk_scaffold = rk_scaffolds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rk_scaffolds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rk_scaffold" do
    assert_difference('RkScaffold.count') do
      post :create, rk_scaffold: {  }
    end

    assert_redirected_to rk_scaffold_path(assigns(:rk_scaffold))
  end

  test "should show rk_scaffold" do
    get :show, id: @rk_scaffold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rk_scaffold
    assert_response :success
  end

  test "should update rk_scaffold" do
    patch :update, id: @rk_scaffold, rk_scaffold: {  }
    assert_redirected_to rk_scaffold_path(assigns(:rk_scaffold))
  end

  test "should destroy rk_scaffold" do
    assert_difference('RkScaffold.count', -1) do
      delete :destroy, id: @rk_scaffold
    end

    assert_redirected_to rk_scaffolds_path
  end
end
