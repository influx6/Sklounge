class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.string :title
      t.string :description
      t.string :gallery_type
      t.timestamps
    end
  end

  def self.down
    drop_table :galleries
  end
end

