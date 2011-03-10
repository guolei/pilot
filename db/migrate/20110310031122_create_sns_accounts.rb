class CreateSnsAccounts < ActiveRecord::Migration
  def self.up
    create_table :sns_accounts do |t|
      t.integer :user_id
      t.string :type, :access_token, :name, :link_url
      t.timestamps
    end

    add_index :sns_accounts, :user_id
  end

  def self.down
    drop_table :sns_accounts
  end
end
