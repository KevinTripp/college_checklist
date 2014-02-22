require 'test_helper'

class CollegeListsControllerTest < ActionController::TestCase
  setup do
    @college_list = college_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:college_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create college_list" do
    assert_difference('CollegeList.count') do
      post :create, college_list: { accepted: @college_list.accepted, completed_steps: @college_list.completed_steps, date_accepted: @college_list.date_accepted, date_complete: @college_list.date_complete, date_due: @college_list.date_due, incomplete_steps: @college_list.incomplete_steps, name: @college_list.name, priority: @college_list.priority, user_id: @college_list.user_id }
    end

    assert_redirected_to college_list_path(assigns(:college_list))
  end

  test "should show college_list" do
    get :show, id: @college_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @college_list
    assert_response :success
  end

  test "should update college_list" do
    put :update, id: @college_list, college_list: { accepted: @college_list.accepted, completed_steps: @college_list.completed_steps, date_accepted: @college_list.date_accepted, date_complete: @college_list.date_complete, date_due: @college_list.date_due, incomplete_steps: @college_list.incomplete_steps, name: @college_list.name, priority: @college_list.priority, user_id: @college_list.user_id }
    assert_redirected_to college_list_path(assigns(:college_list))
  end

  test "should destroy college_list" do
    assert_difference('CollegeList.count', -1) do
      delete :destroy, id: @college_list
    end

    assert_redirected_to college_lists_path
  end
end
