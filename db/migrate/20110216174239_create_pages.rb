class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.references :chapter
      t.string :text
      t.integer :number

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
