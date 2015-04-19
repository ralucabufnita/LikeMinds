class AddAvatarToIdeas < ActiveRecord::Migration
  def self.up
    add_attachment :ideas, :avatar
  end

  def self.down
    remove_attachment :ideas, :avatar
  end
end
