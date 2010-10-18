class CreateReservations < ActiveRecord::Migration
  def self.up
    create_table :reservations do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.string :number_of_guest
      t.date :reservation_date
      t.string :reservation_time
      t.string :table_reservation
      t.string :extra_msg

      t.timestamps
    end
  end

  def self.down
    drop_table :reservations
  end
end

