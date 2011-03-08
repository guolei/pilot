class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.integer :user_id
      t.string :sn
      t.timestamps
    end

    add_index :cards, :user_id
    add_index :cards, :sn, :unique => true
  end

  def self.down
    drop_table :cards
  end
end
