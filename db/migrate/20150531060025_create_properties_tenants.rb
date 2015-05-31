class CreatePropertiesTenants < ActiveRecord::Migration
  def change
    create_table :properties_tenants, :id => false do |t|
    t.integer :property_id
    t.integer :tenant_id
    end
  end
end
