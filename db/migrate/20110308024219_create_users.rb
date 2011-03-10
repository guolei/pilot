class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :type, :mail, :sn
      t.timestamps
    end

    add_index :users, :sn, :unique => true
  end

  def self.down
    drop_table :users
  end
end
