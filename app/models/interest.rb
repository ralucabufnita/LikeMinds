class Interest < ActiveRecord::Base
  belongs_to :user
  belongs_to :idea

  accepts_nested_attributes_for :idea

  :idea_id
  :user_id
  :isInterested
  :Comment

end
