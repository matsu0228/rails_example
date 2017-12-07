class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string   :tw_id, :unique => true
      t.datetime :tw_create_at
      t.string   :user_name
      t.text     :tw_fulltext

      t.timestamps
    end
  end
end
