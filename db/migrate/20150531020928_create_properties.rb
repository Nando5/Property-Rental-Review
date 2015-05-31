class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
    	t.string :street_address
    	t.string :suburb
    	t.string :state
    	t.integer :postcode
    	t.timestamps
    end
  end
end
