class Interest < ActiveRecord::Base
  belongs_to :user
  belongs_to :idea

  has_many :users

  :idea_id
  :user_id

end
