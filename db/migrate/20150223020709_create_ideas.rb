class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :category
      t.string :content
      t.integer :userId
      t.datetime :createdDate
      t.datetime :updatedDate

      t.timestamps
    end
  end
end
