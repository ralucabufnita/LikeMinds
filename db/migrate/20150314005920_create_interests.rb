class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.references :users, index: true
      t.references :idea, index: true

      t.timestamps null: false
    end
    add_foreign_key :interests, :users
    add_foreign_key :interests, :ideas
  end
end
