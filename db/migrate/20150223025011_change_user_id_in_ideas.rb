class ChangeUserIdInIdeas < ActiveRecord::Migration
  def self.up
    rename_column :ideas, :userId, :user_id
  end
end
