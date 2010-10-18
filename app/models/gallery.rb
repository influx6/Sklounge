class Gallery < ActiveRecord::Base

validates  :title, :presence => true
validates  :gallery_type, :presence => true

validates_attachment_presence :photo
attr_accessible :title, :gallery_type,:photo,:description

has_attached_file :photo, :styles => { :original => "640x400>",:small => "300x250>", :thumb => "150x150"},
 :url => "/assets/gallery/:id/:style/:basename.:extension",
 :path => ":rails_root/public/assets/gallery/:id/:style/:basename.:extension"

validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg','image/png','image/jpg']

end

