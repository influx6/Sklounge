class Contact < ActiveRecord::Base
  attr_accessible :full_name, :email, :subject, :message

validates_presence_of :full_name, :email, :subject, :message
end

