class CreateBizProfiles < ActiveRecord::Migration
  def self.up
    create_table :biz_profiles do |t|
      t.integer :user_id
      t.string :name, :address, :phone
      t.timestamps
    end

    add_index :biz_profiles, :user_id, :unique => true
  end

  def self.down
    drop_table :biz_profiles
  end
end
