class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :type
      t.string :uid, :access_token
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
