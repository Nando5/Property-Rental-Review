class AddDetailsToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :time_lived, :text
    add_column :reviews, :building_condition, :text
    add_column :reviews, :kitchen_condition, :text
    add_column :reviews, :bathroom_condition, :text
    add_column :reviews, :bedroom_condition, :text
    add_column :reviews, :area_crime, :text
    add_column :reviews, :area_proximity, :text
    add_column :reviews, :property_management, :text
    add_column :reviews, :overall_comment, :text
  end
end
