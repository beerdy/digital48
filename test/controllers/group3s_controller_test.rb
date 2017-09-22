require 'test_helper'

class Group3sControllerTest < ActionController::TestCase
  setup do
    @group3 = group3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group3" do
    assert_difference('Group3.count') do
      post :create, group3: { description: @group3.description, image_name: @group3.image_name, image_uid: @group3.image_uid, slave: @group3.slave, sort: @group3.sort, title: @group3.title, url: @group3.url }
    end

    assert_redirected_to group3_path(assigns(:group3))
  end

  test "should show group3" do
    get :show, id: @group3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group3
    assert_response :success
  end

  test "should update group3" do
    patch :update, id: @group3, group3: { description: @group3.description, image_name: @group3.image_name, image_uid: @group3.image_uid, slave: @group3.slave, sort: @group3.sort, title: @group3.title, url: @group3.url }
    assert_redirected_to group3_path(assigns(:group3))
  end

  test "should destroy group3" do
    assert_difference('Group3.count', -1) do
      delete :destroy, id: @group3
    end

    assert_redirected_to group3s_path
  end
end
