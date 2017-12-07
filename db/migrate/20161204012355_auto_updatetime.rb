# -*- coding: utf-8 -*-
class AutoUpdatetime < ActiveRecord::Migration

  # なぜかエラーで設定できず
  CREATE_TIMESTAMP = 'DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP'
  UPDATE_TIMESTAMP = 'DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'

  # 変更内容
  def up
    change_column :tweets, :created_at, :datetime, null: false
    change_column :tweets, :updated_at, :datetime, null: false
  end
  
  # 変更前の状態
  def down
    change_column :tweets, :created_at, :datetime
    change_column :tweets, :updated_at, :datetime
  end

end
