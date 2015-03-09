class Idea < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :category, presence: true
  validates :content, presence: true
  validates :user_id, presence: true

  def self.search(query)
    where("title like ?", "%#{query}%")
  end

end
