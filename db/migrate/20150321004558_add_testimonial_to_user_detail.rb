class AddTestimonialToUserDetail < ActiveRecord::Migration
  def change
    add_column :user_details, :testimonial, :text
  end
end
