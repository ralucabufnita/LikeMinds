class CreateCategoryTable < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category
      t.boolean :active
    end
  end
end
