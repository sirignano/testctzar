class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:username]
    attr_accessor :login
    
    def email_changed?
      false
    end
    def email
      true
    end
    def login=(login)
      @login = login
    end

    def login
      @login || self.username || self.email
    end
end
