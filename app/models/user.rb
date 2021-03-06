require 'digest/sha1'

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :salt, :confirm_password

  has_many :reviews

  validates :name, :presence => true
  validates :email, :presence => true
  validate :password, :presence => true


  def self.authenticate(email, password)
    user = find_by_email email

    salted = password << user.salt

    user_password = Digest::SHA1.hexdigest salted

    if user.password == user_password
      user
    else
      nil
    end
  end
end
