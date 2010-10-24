class Event < ActiveRecord::Base
   attr_accessible :event_name, :event_start_date, :event_end_date, :event_start_time,:event_end_time

attr_reader :current_year, :current_month, :month_list
validates_presence_of :event_name, :event_start_date, :event_end_date, :event_start_time,:event_end_time
validates_uniqueness_of :event_name

  def month
    self.event_start_date.month
  end


 def self.current_events
  list = []
  unless self == nil
     self.all.each do |n|
       if ( n.month == self.current_month)
          list << self.find(n.id)
        return list
      end
    end
    return nil
   end
  end

 protected #----------------------

  def self.month_list
    { 1 => 'January',2 => 'Feburary', 3 => 'March', 4 => 'April', 5 => 'May', 6 => 'June', 7 => 'July', 8 => 'August', 9 => 'September', 11 => 'Novermber', 10 => 'October', 12 => 'December' }
  end

  def self.current_year
    @current_year = Date.today.year
  end

  def self.current_month
    @current_month = Date.today.month
  end

end

