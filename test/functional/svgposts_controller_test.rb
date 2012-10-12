require 'test_helper'

class SvgpostsControllerTest < ActionController::TestCase
  setup do
    @svgpost = svgposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:svgposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create svgpost" do
    assert_difference('Svgpost.count') do
      post :create, svgpost: { content: @svgpost.content, user_id: @svgpost.user_id }
    end

    assert_redirected_to svgpost_path(assigns(:svgpost))
  end

  test "should show svgpost" do
    get :show, id: @svgpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @svgpost
    assert_response :success
  end

  test "should update svgpost" do
    put :update, id: @svgpost, svgpost: { content: @svgpost.content, user_id: @svgpost.user_id }
    assert_redirected_to svgpost_path(assigns(:svgpost))
  end

  test "should destroy svgpost" do
    assert_difference('Svgpost.count', -1) do
      delete :destroy, id: @svgpost
    end

    assert_redirected_to svgposts_path
  end
end
