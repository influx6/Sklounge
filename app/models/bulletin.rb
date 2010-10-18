class Bulletin < ActiveRecord::Base

  attr_accessible :title, :message
  cattr_reader :per_page
  @@per_page = 5
end

