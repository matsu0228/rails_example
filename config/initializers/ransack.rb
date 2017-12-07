# -*- coding: utf-8 -*-
Ransack.configure do |config|
  # 終了日の時刻を23:59にする
  config.add_predicate 'lteq_end_of_day',
  :arel_predicate => 'lteq',
  :formatter => proc { |v| v.end_of_day },
  :compounds => false
end
