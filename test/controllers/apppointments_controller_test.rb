require 'test_helper'

class ApppointmentsControllerTest < ActionController::TestCase
  setup do
    @apppointment = apppointments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apppointments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apppointment" do
    assert_difference('Apppointment.count') do
      post :create, apppointment: { date: @apppointment.date, location: @apppointment.location, memo: @apppointment.memo, title: @apppointment.title }
    end

    assert_redirected_to apppointment_path(assigns(:apppointment))
  end

  test "should show apppointment" do
    get :show, id: @apppointment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apppointment
    assert_response :success
  end

  test "should update apppointment" do
    patch :update, id: @apppointment, apppointment: { date: @apppointment.date, location: @apppointment.location, memo: @apppointment.memo, title: @apppointment.title }
    assert_redirected_to apppointment_path(assigns(:apppointment))
  end

  test "should destroy apppointment" do
    assert_difference('Apppointment.count', -1) do
      delete :destroy, id: @apppointment
    end

    assert_redirected_to apppointments_path
  end
end
