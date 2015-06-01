# == Schema Information
#
# Table name: tenants
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  created_at      :datetime
#  updated_at      :datetime
#

class Tenant < ActiveRecord::Base
  has_and_belongs_to_many :properties
  has_many :reviews
  has_secure_password

  validates :email, :presence => true
  validates :email, :uniqueness => true
end
