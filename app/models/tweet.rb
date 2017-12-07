# t.string   "tw_id"
# t.datetime "tw_create_at"
# t.string   "user_name"
# t.text     "tw_fulltext"
# t.datetime "created_at",   null: false
# t.datetime "updated_at",   null: false

class Tweet < ActiveRecord::Base

  def tw_count(user_name)

    # self.where(:user_name, user_name).count
    self.where(user_name: user_name).size
  end
  
  #  def index
  # #   self.all
  #  end

  # def self.ransackable_scopes(_auth_object = nil)
  #   %i(status_eq)
  # end
end
