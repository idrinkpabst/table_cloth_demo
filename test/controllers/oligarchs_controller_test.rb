require 'test_helper'

class OligarchsControllerTest < ActionController::TestCase
  setup do
    @oligarch = oligarchs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oligarchs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oligarch" do
    assert_difference('Oligarch.count') do
      post :create, oligarch: { age: @oligarch.age, name: @oligarch.name, net_worth: @oligarch.net_worth, properties: @oligarch.properties, rank: @oligarch.rank }
    end

    assert_redirected_to oligarch_path(assigns(:oligarch))
  end

  test "should show oligarch" do
    get :show, id: @oligarch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oligarch
    assert_response :success
  end

  test "should update oligarch" do
    patch :update, id: @oligarch, oligarch: { age: @oligarch.age, name: @oligarch.name, net_worth: @oligarch.net_worth, properties: @oligarch.properties, rank: @oligarch.rank }
    assert_redirected_to oligarch_path(assigns(:oligarch))
  end

  test "should destroy oligarch" do
    assert_difference('Oligarch.count', -1) do
      delete :destroy, id: @oligarch
    end

    assert_redirected_to oligarchs_path
  end
end
