require 'test_helper'

class TagsearchesControllerTest < ActionController::TestCase
  setup do
    @tagsearch = tagsearches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tagsearches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tagsearch" do
    assert_difference('Tagsearch.count') do
      post :create, tagsearch: { tag: @tagsearch.tag }
    end

    assert_redirected_to tagsearch_path(assigns(:tagsearch))
  end

  test "should show tagsearch" do
    get :show, id: @tagsearch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tagsearch
    assert_response :success
  end

  test "should update tagsearch" do
    put :update, id: @tagsearch, tagsearch: { tag: @tagsearch.tag }
    assert_redirected_to tagsearch_path(assigns(:tagsearch))
  end

  test "should destroy tagsearch" do
    assert_difference('Tagsearch.count', -1) do
      delete :destroy, id: @tagsearch
    end

    assert_redirected_to tagsearches_path
  end
end
