class Contact < ActiveRecord::Base
  attr_accessible :full_name, :email, :subject, :message

validates_presence_of :full_name, :email, :subject, :message
validates_format_of :email,  :with => /([a-z0-9_.-]+)@([a-z0-9-]+)\.([a-z.]+)/i ,:message => " is Invalid"
end

