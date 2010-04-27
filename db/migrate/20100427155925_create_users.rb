class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :middle
      t.string :email
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
