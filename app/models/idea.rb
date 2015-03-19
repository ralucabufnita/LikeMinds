class Idea < ActiveRecord::Base
  belongs_to :user

  has_many :interests
  has_many :users, through: :ideas

  accepts_nested_attributes_for :interests

  :title
  :category
  :content
  :user_id
  :createdDate
  :updatedDate

  def self.search(query)
    where("title like ?", "%#{query}%")
  end

end
