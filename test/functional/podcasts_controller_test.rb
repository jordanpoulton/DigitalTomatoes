require 'test_helper'
require_relative '../factories/user_factory'
#require File.expand_path('../test/factories/user_factory', __FILE__)
# require_relative 'user_factory'

class PodcastsControllerTest < ActionController::TestCase


  test "should get new" do
    user = UserFactory.ideal_user
    get :new, nil, {'user_id' => user.id}
    assert_not_nil assigns(:current_user)
    assert_not_nil assigns(:genres)
    assert_not_nil assigns(:podcast)
  end

  test "must be logged in to create a podcast" do
    user = UserFactory.ideal_user
    post :create, {:name => "The Jordan Show", :body => "The greatest show on earth" }, {'user_id' => user.id}
    assert_equal 1, Podcast.count, "Podcast was not created"
  end

  # can't create a podcast without logging in
  test "user can't create a podcast without logging in" do
    post :create, {:name => "The Jordan Show", :body => "The greatest show on earth" }
    assert_redirected_to(new_session_path)
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
