class Idea < ActiveRecord::Base
  belongs_to :user

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
