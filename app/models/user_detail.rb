class UserDetail < ActiveRecord::Base
  belongs_to :user

  has_one :user

  :user_id
  :nickname
  :likes
  :rating
  :postCount

end
