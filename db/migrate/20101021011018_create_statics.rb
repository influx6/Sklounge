class CreateStatics < ActiveRecord::Migration
  def self.up
    create_table :statics do |t|
      t.text :show_desc
      t.text :contact_desc
      t.string :static_active
      t.timestamps
    end
  end

  def self.down
    drop_table :statics
  end
end

