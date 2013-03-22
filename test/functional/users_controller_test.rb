require 'test_helper'
require_relative '../factories/user_factory'

class UsersControllerTest < ActionController::TestCase


  test "test for name present - create new user" do
    user = UserFactory.user_without_name
    post :create, {:user => {:email => user.email, :password => user.password, :confirm_password => user.password}}
    assert_template(:controller => 'users', :action => "new")
  end

  test "test for email presence when creating new user" do
    user = UserFactory.user_without_email
    post :create, {:user => {:name => user.name, :password => user.password, :confirm_password => user.password}}
    assert_template :new
  end

  test "test for password presence when creating new user" do
    user = UserFactory.user_without_password
    post :create, {:user => {:name => user.name, :email => user.email }}
    assert_template :new
  end





  # test "should get index" do
  #   get :index
  #   assert_response :success
  # end

  # test "should get show" do
  #   get :show
  #   assert_response :success
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should get create" do
  #   get :create
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit
  #   assert_response :success
  # end

  # test "should get update" do
  #   get :update
  #   assert_response :success
  # end

  # test "should get destroy" do
  #   get :destroy
  #   assert_response :success
  # end

end
