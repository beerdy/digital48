require 'test_helper'

class Group1sControllerTest < ActionController::TestCase
  setup do
    @group1 = group1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group1" do
    assert_difference('Group1.count') do
      post :create, group1: { description: @group1.description, image_name: @group1.image_name, image_uid: @group1.image_uid, slave: @group1.slave, sort: @group1.sort, title: @group1.title, url: @group1.url }
    end

    assert_redirected_to group1_path(assigns(:group1))
  end

  test "should show group1" do
    get :show, id: @group1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group1
    assert_response :success
  end

  test "should update group1" do
    patch :update, id: @group1, group1: { description: @group1.description, image_name: @group1.image_name, image_uid: @group1.image_uid, slave: @group1.slave, sort: @group1.sort, title: @group1.title, url: @group1.url }
    assert_redirected_to group1_path(assigns(:group1))
  end

  test "should destroy group1" do
    assert_difference('Group1.count', -1) do
      delete :destroy, id: @group1
    end

    assert_redirected_to group1s_path
  end
end
