require 'digest/sha1'

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :salt, :confirm_password

  has_many :reviews

  def self.authenticate(email, password)
    user = find_by_email email

    hashed_password = Digest::SHA1.hexdigest password

    salted = hashed_password << user.salt

    user_password = Digest::SHA1.hexdigest salted

    if user.password == user_password
      user
    else
      nil
    end
  end
end
