class Static < ActiveRecord::Base
  attr_accessible :show_desc, :about_desc, :static_active



protected

def self.find_active
 self.find_by_static_active('Yes', :limit => 1)
end
end

