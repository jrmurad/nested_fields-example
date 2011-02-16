class CreateCovers < ActiveRecord::Migration
  def self.up
    create_table :covers do |t|
      t.references :book
      t.string :color

      t.timestamps
    end
  end

  def self.down
    drop_table :covers
  end
end
