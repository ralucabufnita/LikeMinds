class AddIsColumnsToInterests < ActiveRecord::Migration
  def change
    self.up
    add_column :interests, :idea_id, :integer
    add_column :interests, :user_id, :integer
    add_column :interests, :IsInterested, :boolean
    add_column :interests, :Comment, :text
  end
end
