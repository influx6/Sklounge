class Reservation < ActiveRecord::Base

validates_format_of :email,  :with => /([a-z0-9_.-]+)@([a-z0-9-]+)\.([a-z.]+)/i ,:message => " is Invalid"
  validates_presence_of :first_name, :last_name, :email,
   :phone_number, :number_of_guest
  validates_numericality_of :phone_number, :number_of_guest
  
  
  def self.search(search)
   seach_condition = "%"+ search + "%"
   find(:all, :condition => ['first_name LIKE ? OR last_name LIKE ? OR id LIKE ? OR reservation_date LIKE ? OR service_type LIKE ?',seach_condition ,seach_condition])
  end
  
end
