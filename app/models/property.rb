# == Schema Information
#
# Table name: properties
#
#  id             :integer          not null, primary key
#  street_address :string
#  suburb         :string
#  state          :string
#  postcode       :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Property < ActiveRecord::Base
  has_and_belongs_to_many :tenants
  has_many :reviews
end
