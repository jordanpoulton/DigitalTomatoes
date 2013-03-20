require 'digest/sha1'

class UsersController < ApplicationController

  def index
  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    if params[:user][:password] == params[:user][:confirm_password]

      @user = User.new
      @user.name = params[:user][:name]
      @user.email = params[:user][:email].downcase

      @user.salt = Digest::SHA1.hexdigest Time.now.to_s
      salted = params[:user][:password].to_s << @user.salt
      @user.password = Digest::SHA1.hexdigest salted

      @user.save
      # hash the password, create SALT, check passwords match and save all to the db
    end
    redirect_to new_session_path
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
