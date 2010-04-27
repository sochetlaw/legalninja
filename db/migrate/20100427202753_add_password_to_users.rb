class AddPasswordToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :encrypted_password, :string
    remove_column :users, :password
  end

  def self.down
    remove_column :users, :encrypted_password
    add_column :password
  end
end
