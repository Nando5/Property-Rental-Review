# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  comment     :text
#  rating      :integer
#  tenant_id   :integer
#  property_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Review < ActiveRecord::Base
 belongs_to :tenant
 belongs_to :property
end
