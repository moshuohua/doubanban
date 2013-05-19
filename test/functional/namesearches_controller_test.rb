require 'test_helper'

class NamesearchesControllerTest < ActionController::TestCase
  setup do
    @namesearch = namesearches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:namesearches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create namesearch" do
    assert_difference('Namesearch.count') do
      post :create, namesearch: { name: @namesearch.name }
    end

    assert_redirected_to namesearch_path(assigns(:namesearch))
  end

  test "should show namesearch" do
    get :show, id: @namesearch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @namesearch
    assert_response :success
  end

  test "should update namesearch" do
    put :update, id: @namesearch, namesearch: { name: @namesearch.name }
    assert_redirected_to namesearch_path(assigns(:namesearch))
  end

  test "should destroy namesearch" do
    assert_difference('Namesearch.count', -1) do
      delete :destroy, id: @namesearch
    end

    assert_redirected_to namesearches_path
  end
end
