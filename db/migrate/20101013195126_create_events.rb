class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :event_name
      t.string :event_start_time
      t.string :event_end_time
      t.date :event_start_date
      t.date :event_end_date
    end
  end

  def self.down
    drop_table :events
  end
end

