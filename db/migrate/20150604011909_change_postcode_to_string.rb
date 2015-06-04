class ChangePostcodeToString < ActiveRecord::Migration
  def change
  	change_column :properties, :postcode, :string
  end
end
