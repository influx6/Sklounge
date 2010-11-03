class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :full_name
      t.string :email
      t.string :subject
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
