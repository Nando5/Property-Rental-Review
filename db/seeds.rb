# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Review.destroy_all
Tenant.destroy_all
Property.destroy_all

# r1 = Review.create (:comment => 'Nice place', :rating => 5)

# t1 = Tenant.create (:name => 'Walter Matthews', :email => 'wmatthews@gmail.com')

Property.create (:street_address => '27 Brunswick Street', :suburb => 'Granville', :state => 'NSW', :postcode => 2142)