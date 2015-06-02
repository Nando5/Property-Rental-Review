# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Tenant.destroy_all
# Property.destroy_all
# Review.destroy_all


t1 = Tenant.create(:name => 'Walter Matthews', :email => 'wmatthews@gmail.com', :password => "chicken", :password_confirmation => "chicken")
p1 = Property.create(:street_address => '27 Brunswick Street', :suburb => 'Granville', :state => 'NSW', :postcode => 2142)
r1 = Review.create(:comment => 'seed1: nice place', :rating => 6)

t2 = Tenant.create(:name => 'Jack Dawson', :email => 'jdawson@gmail.com', :password => "chicken", :password_confirmation => "chicken")
p2 = Property.create(:street_address => '5 Purton Street', :suburb => 'Stanhope Gardens', :state => 'NSW', :postcode => 2768)
r2 = Review.create(:comment => 'seed2: very ugly', :rating => 8)

t3 = Tenant.create(:name => 'Bruce Sullivan', :email => 'bsullivan@gmail.com', :password => "chicken", :password_confirmation => "chicken")
p3 = Property.create(:street_address => '16 Claremont Street', :suburb => 'Merrylands', :state => 'NSW', :postcode => 2160)
r3 = Review.create(:comment => 'seed3: magnificent', :rating => 5)

p1.reviews << r1
p2.reviews << r2
p3.reviews << r3

t1.reviews << r1
t2.reviews << r2
t3.reviews << r3

t1.properties << p1
t2.properties << p2
t3.properties << p3



