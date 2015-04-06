class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.string :nickname
      t.integer :likes
      t.integer :user_id
      t.integer :rating
      t.integer :postCount

      t.references :users, index: true

      t.timestamps null: false
    end
  end
end
