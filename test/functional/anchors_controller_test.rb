require 'test_helper'

class AnchorsControllerTest < ActionController::TestCase
  setup do
    @anchor = anchors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anchors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anchor" do
    assert_difference('Anchor.count') do
      post :create, anchor: { slug: @anchor.slug, title: @anchor.title, url: @anchor.url, visits: @anchor.visits }
    end

    assert_redirected_to anchor_path(assigns(:anchor))
  end

  test "should show anchor" do
    get :show, id: @anchor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anchor
    assert_response :success
  end

  test "should update anchor" do
    put :update, id: @anchor, anchor: { slug: @anchor.slug, title: @anchor.title, url: @anchor.url, visits: @anchor.visits }
    assert_redirected_to anchor_path(assigns(:anchor))
  end

  test "should destroy anchor" do
    assert_difference('Anchor.count', -1) do
      delete :destroy, id: @anchor
    end

    assert_redirected_to anchors_path
  end
end
