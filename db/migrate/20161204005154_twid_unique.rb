class TwidUnique < ActiveRecord::Migration
  def change
    add_index :tweets, :tw_id, :unique => true
  end
end
