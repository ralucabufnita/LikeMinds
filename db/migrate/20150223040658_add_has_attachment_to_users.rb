class AddHasAttachmentToUsers < ActiveRecord::Migration
  def self.up
    add_column :users,  :has_attached_file, :string
  end
end
