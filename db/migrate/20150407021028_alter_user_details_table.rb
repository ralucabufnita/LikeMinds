class AlterUserDetailsTable < ActiveRecord::Migration
  def change
    remove_column :user_details, :postCount
    remove_column :user_details, :likes
    remove_column :user_details, :testimonial
  end
end
