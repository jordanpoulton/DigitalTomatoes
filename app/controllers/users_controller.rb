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
    unless params[:user][:password] == params[:user][:confirm_password]
      render :new, :notice => "typo"
      return
    end

    @user = User.new
    @user.name = params[:user][:name]
    @user.email =  params[:user][:email].downcase unless params[:user][:email].nil?
    @user.salt = Digest::SHA1.hexdigest Time.now.to_s
    salted = params[:user][:password].to_s << @user.salt
    @user.password = Digest::SHA1.hexdigest salted
    if @user.save
      redirect_to new_session_path
    else
      render :new, :notice => "Sorry, could not create the user"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
