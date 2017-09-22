require 'test_helper'

class Group4sControllerTest < ActionController::TestCase
  setup do
    @group4 = group4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group4" do
    assert_difference('Group4.count') do
      post :create, group4: { description: @group4.description, image_name: @group4.image_name, image_uid: @group4.image_uid, slave: @group4.slave, sort: @group4.sort, title: @group4.title, url: @group4.url }
    end

    assert_redirected_to group4_path(assigns(:group4))
  end

  test "should show group4" do
    get :show, id: @group4
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group4
    assert_response :success
  end

  test "should update group4" do
    patch :update, id: @group4, group4: { description: @group4.description, image_name: @group4.image_name, image_uid: @group4.image_uid, slave: @group4.slave, sort: @group4.sort, title: @group4.title, url: @group4.url }
    assert_redirected_to group4_path(assigns(:group4))
  end

  test "should destroy group4" do
    assert_difference('Group4.count', -1) do
      delete :destroy, id: @group4
    end

    assert_redirected_to group4s_path
  end
end
