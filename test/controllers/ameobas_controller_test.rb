require 'test_helper'

class AmeobasControllerTest < ActionController::TestCase
  setup do
    @ameoba = ameobas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ameobas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ameoba" do
    assert_difference('Ameoba.count') do
      post :create, ameoba: {  }
    end

    assert_redirected_to ameoba_path(assigns(:ameoba))
  end

  test "should show ameoba" do
    get :show, id: @ameoba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ameoba
    assert_response :success
  end

  test "should update ameoba" do
    patch :update, id: @ameoba, ameoba: {  }
    assert_redirected_to ameoba_path(assigns(:ameoba))
  end

  test "should destroy ameoba" do
    assert_difference('Ameoba.count', -1) do
      delete :destroy, id: @ameoba
    end

    assert_redirected_to ameobas_path
  end
end
