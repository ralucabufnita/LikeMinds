class Category < ActiveRecord::Base
  has_many :ideas

  :category
  :active
  :createdAt
  :updatedAt
end
