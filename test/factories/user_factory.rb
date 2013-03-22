class UserFactory

  class << self

    def ideal_user
      User.new(:name => "Jordan", :email => "j@j.com", :password => 'sesame')
    end

    def user_without_name
      User.new(:email => "j@j.com", :password => 'sesame' )
    end

    def user_without_email
      User.new(:name => "Jordan", :password => 'sesame')
    end

    def user_without_password
      User.new(:name => "Jordan", :email => "j@j.com")
    end


  end
end

