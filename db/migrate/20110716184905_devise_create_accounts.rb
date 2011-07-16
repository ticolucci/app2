class DeviseCreateAccounts < ActiveRecord::Migration
  def self.up
    create_table(:accounts) do |t|
      t.database_authenticatable :null => false
      t.string :login
      t.timestamps
    end

    add_index :accounts, :login,                :unique => true
  end

  def self.down
    drop_table :accounts
  end
end
