class User < ActiveRecord::Base

  attr_accessible :login, :email, :password,:password_confirmation
  acts_as_authentic do |c|
   c.validate_email_field = true
  end




end
