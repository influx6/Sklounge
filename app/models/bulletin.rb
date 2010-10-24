class Bulletin < ActiveRecord::Base

  attr_accessible :title, :message
  validates_presence_of :title, :message
  cattr_reader :per_page
  @@per_page = 5
end

