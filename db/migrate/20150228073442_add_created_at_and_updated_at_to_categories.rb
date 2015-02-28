class AddCreatedAtAndUpdatedAtToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :createdAt, :datetime
    add_column :categories, :updatedAt, :datetime
  end
end
