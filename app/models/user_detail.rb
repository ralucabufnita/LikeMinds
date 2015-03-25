class UserDetail < ActiveRecord::Base
  belongs_to :user

  has_one :user
  has_many :ideas, through: :user
  has_many :interests, through: :user

  :user_id
  :nickname
  :likes
  :rating
  :postCount



end
