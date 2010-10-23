class User < ActiveRecord::Base
attr_reader :staff_list
validates_uniqueness_of :login

attr_accessible :login, :email, :password,:password_confirmation


acts_as_authentic do |c|
   c.validate_email_field = true
end


def self.staff_list
 @staff_list = self.get_user_list || []
end

private

def self.get_user_list
 data = []
 list = self.all
 unless list.empty?
  list.each do |u|
    unless u.login == "sklounge"
    data << u
   return data
   end
  end
 end
 return nil
end

end

