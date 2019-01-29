class FixUser < ActiveRecord::Migration[5.2]
  
  def self.down
    drop_table :users
  end
end
