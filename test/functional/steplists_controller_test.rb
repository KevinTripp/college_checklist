require 'test_helper'

class SteplistsControllerTest < ActionController::TestCase
  setup do
    @steplist = steplists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steplists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create steplist" do
    assert_difference('Steplist.count') do
      post :create, steplist: { college_list: @steplist.college_list, date_completed: @steplist.date_completed, due_date: @steplist.due_date, name: @steplist.name }
    end

    assert_redirected_to steplist_path(assigns(:steplist))
  end

  test "should show steplist" do
    get :show, id: @steplist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @steplist
    assert_response :success
  end

  test "should update steplist" do
    put :update, id: @steplist, steplist: { college_list: @steplist.college_list, date_completed: @steplist.date_completed, due_date: @steplist.due_date, name: @steplist.name }
    assert_redirected_to steplist_path(assigns(:steplist))
  end

  test "should destroy steplist" do
    assert_difference('Steplist.count', -1) do
      delete :destroy, id: @steplist
    end

    assert_redirected_to steplists_path
  end
end
