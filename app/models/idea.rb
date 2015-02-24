class Idea < ActiveRecord::Base
  belongs_to :user

  :title
  :category
  :content
  :user_id
  :createdDate
  :updatedDate

end
