# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tenant.destroy_all
Property.destroy_all
Review.destroy_all


t1 = Tenant.create(:name => 'Walter Matthews', :email => 'wmatthews@gmail.com', :password => "chicken", :password_confirmation => "chicken")
p1 = Property.create(:street_address => '27 Brunswick Street', :suburb => 'Granville', :state => 'NSW', :postcode => 2142)
r1 = Review.create( 
				   :time_lived => 'Lived here for 6 months from January 2013', 
				   :building_condition => "Building is sound, a litlt old though. However with a bit of work should not pose much of a hassle.",
				   :kitchen_condition => 'nice granite tops, electric, no gas. The kitchen was great for parties as the layout is spacious and allows for alot of friends to gather.', 
				   :bathroom_condition => "Old tub, not good for romance. But who cares as long as you can get what you need done. I lived with a couple of blokes, so it was ok for us.", 
				   :bedroom_condition => "Big enough, that is all you need. This place isn't a mansion but it does the trick, the place is a little old but you probably already know that.",
				   :area_crime => "very safe during the daytime, a little less at night. Nothing to sweat over. It was smooth sailing for us.", 
				   :area_proximity => "Close to shops and transport but if you a ride a bike, prepare to get alot of exercise going up hill.", 
				   :property_management => "Didn't really need to deal with then to be honest, that doesn't mean it was all good, the one time we did need a tap fixed, we got such the run around.. Blah!",
				   :overall_comment => "At the end of the day it was a place to stay while i finished up my studies, did the job i supposes. A a very nice place to stay for 6 months if you're on your own and are easy to please. Rent was acceptable for what i got."
				   )

t2 = Tenant.create(:name => 'Jacky Dawson', :email => 'jdawson@gmail.com', :password => "chicken", :password_confirmation => "chicken")
p2 = Property.create(:street_address => '5 Purton Street', :suburb => 'Kensington', :state => 'VIC', :postcode => 3031)
r2 = Review.create( 
				   :time_lived => 'Was there for 12 months from October 2011', 
				   :building_condition => "Condition is ok, old though. However with a bit of work should not pose much of a hassle.",
				   :kitchen_condition => 'nice wallpaper, gas!! thank God. The kitchen was great for parties as the layout is spacious and allows for alot of friends drink up.', 
				   :bathroom_condition => "Pretty average but what do you expect for the price. You can get what you need done. As a girl i was praying for a bigger mirror.", 
				   :bedroom_condition => "Big enough, that is all you need. This place isn't a mansion but it does the trick, the place is a little old but you probably already know that.",
				   :area_crime => "Safe in the day, wouldn't recommend walking out after dark alone though, atleast if you are a female..", 
				   :area_proximity => "Close to shops and transport which was great but if you need something in a hurry you'll still need a car.", 
				   :property_management => "shite, Shite! what do you expect, everytime we had an issue it was a whirlwind to get anyhting done, it was delay after delay after delay.",
				   :overall_comment => "I loved my time there but it was more coz of my friends. A place to stay while you finish up studies or work part-time. Permanently though look elsewhere. An ok place to stay for 12 months, Nothing more. Rent was acceptable."
				   )

t3 = Tenant.create(:name => 'Britney Sullivan', :email => 'bsullivan@gmail.com', :password => "chicken", :password_confirmation => "chicken")
p3 = Property.create(:street_address => '16 Claremont Street', :suburb => 'Parkville', :state => 'VIC', :postcode => 3052)
r3 = Review.create( 
				   :time_lived => 'Lived here for 1 year from March 2014', 
				   :building_condition => "hmmmmmmm is ok, old though. However with a bit of a fixer upper.",
				   :kitchen_condition => 'not very sexyy, but everything works. The kitchen is big, so that is good, but the place is old, atleast 15 years and not kept well', 
				   :bathroom_condition => "Pretty average but what do you expect for the price. You can get what you need done. As a girl i was praying for a bigger mirror.", 
				   :bedroom_condition => "Big enough, that is all you need. This place isn't a mansion but it does the trick, the place is a little old but you probably already know that.",
				   :area_crime => "Safe, if you're not in a short skirt, wouldn't recommend walking out after dark alone though, alot of annoying ranting teens.", 
				   :area_proximity => "Close to shops and transport which was great but if you need something in a hurry you'll still need a car.", 
				   :property_management => "Loved em! never heard from the fuckers!.",
				   :overall_comment => "Look, its nothing great, but you know the place, its not supposed to. If you want to stay there with a few mates then great, it will suffice, other than that, do what i did. Move to bigger and better things"
				   )

t4 = Tenant.create(:name => 'Micky Jagger', :email => 'mjagger@gmail.com', :password => "chicken", :password_confirmation => "chicken")
p4 = Property.create(:street_address => '45 Susaab Street', :suburb => 'Dalby', :state => 'QLD', :postcode => 4408)
r4 = Review.create( 
				   :time_lived => 'Lived here for 2 year from April 2009', 
				   :building_condition => "place is awesome!!, However a bit pricey.",
				   :kitchen_condition => 'almost new, everything modern. The kitchen is small, thats the only problem, wish i was still there.', 
				   :bathroom_condition => "Pretty average but what do you expect for the price. You can get what you need done. A girl's best place for her morning make up.", 
				   :bedroom_condition => "Fun nights here,, hehehe, that is all you need. This place isn't a mansion but it does the trick, the place is a awesome and nice.",
				   :area_crime => "Safe, wouldn't recommend walking out after dark alone though, alot of annoying parties on saturday nights. Sux balls!", 
				   :area_proximity => "Close to shops and transport which was great but if you need something in a hurry you'll still need a car.", 
				   :property_management => "In this case i had really nice girl to deal with, she was really attentive and on the money everytime there was an issue. Definitely a plus.",
				   :overall_comment => "I liked it, for the money you could do alot worse. Stayed during my favourite season, walks on the evening paths were always relaxing"
				   )

t5 = Tenant.create(:name => 'Rocky Balboa', :email => 'rbalboa@gmail.com', :password => "chicken", :password_confirmation => "chicken")
p5 = Property.create(:street_address => '7 Messi Street', :suburb => 'Toongabbie', :state => 'NSW', :postcode => 2142)
r5 = Review.create( 
				   :time_lived => 'Lived here for 8 months from June 2011', 
				   :building_condition => "Worst place ever, old. Ugly as shit, everything is broken. Do not stay here, its a shithole.",
				   :kitchen_condition => "shitty tops, no electric, no gas. The kitchen is for food and to eat, if you look at it that way then sure theres no problem i suppose.", 
				   :bathroom_condition => "Old tub, not good for romance. But who cares as long as you can get what you need done. I lived with a couple of blokes, so it was ok for us.", 
				   :bedroom_condition => "Big enough, that is all you need. This place isn't a mansion but it does the trick, the place is a little old but you probably already know that.",
				   :area_crime => "nut cases walking around during the daytime, a little less at night. But it was all shit anyway!!!.", 
				   :area_proximity => "Close to shops and transport but if you a ride a bike, prepare to get alot of exercise going up hill.", 
				   :property_management => "Probably the only thing that was good about this place was irronically the real estate. They probably knew what a shit whole the place was and were already prepared",
				   :overall_comment => "A massive shit hole!!,A massive shit hole!!,A massive shit hole!!,A massive shit hole!! Do not stay here. Its a rip off, the place is ugly and old, there are rats, and it the place stiks like shit. I didnt have anything better at the time, so i stayed but if you do, then you should stay away."
				   )

t6 = Tenant.create(:name => 'Vickson Suli', :email => 'vsuli@gmail.com', :password => "chicken", :password_confirmation => "chicken")
p6 = Property.create(:street_address => '8 Runy Street', :suburb => 'Waddington', :state => 'WA', :postcode => 6509)
r6 = Review.create( 
				   :time_lived => 'Lived here for 6 months from May 2014', 
				   :building_condition => "yeah, newish but still freakin old looking. But hey its the area that sells tgis place",
				   :kitchen_condition => "everything works. Thats what ill say, so that is good, but the place is old looking, atleast 5 years and not kept well", 
				   :bathroom_condition => "Pretty average but what do you expect for the price. You can get what you need done. As a girl i was praying for a bigger mirror.", 
				   :bedroom_condition => "Big enough, that is all you need. This place isn't a mansion but it does the trick, the place is a little old but you probably already know that.",
				   :area_crime => "Safe, place is great to live at, you can walk around whenever.. plus i love how the area is kept up to scratch.", 
				   :area_proximity => "Close to shops and transport which was great but if you need something in a hurry you'll still need a car.", 
				   :property_management => "Yeah, the place was in ok nick, so never really had to deal with them.",
				   :overall_comment => "Look, i like it, but you know the place, its not supposed to. If you want to stay there with a few mates then great, it will be great if you stay with a few mates, mean fiddler is just around the corner,, youll love the place"
				   )

t7 = Tenant.create(:name => 'Susan Lui', :email => 'slui@gmail.com', :password => "chicken", :password_confirmation => "chicken")
p7 = Property.create(:street_address => '8 Runy Street', :suburb => 'Flemington', :state => 'VIC', :postcode => 3031)
r7 = Review.create( 
				   :time_lived => 'Lived here for 11 months from Nov 2007', 
				   :building_condition => "newish but still freakin old looking. But hey who cares",
				   :kitchen_condition => "everything works. Thats what ill say, so that is good, but the place is old looking, atleast you can and not kept up", 
				   :bathroom_condition => "Pretty average but what do you expect for the price. You can get what you need done. As a girl i was praying for a bigger mirror.", 
				   :bedroom_condition => "Bloody hell writing this is tiring. This place isn't a mansion but it does the trick, the place is a little old but you probably already know that.",
				   :area_crime => "Safe, but i just wanna go to bed already.. Come on!!! place is great to live at, you can walk around whenever.. plus i love how the area is kept up to scratch.", 
				   :area_proximity => "Close to shops and transport which was great but if you need something in a hurry you'll still need a car.", 
				   :property_management => "Yeah, the place was in ok nick, so never really had to deal with them.",
				   :overall_comment => "Look, i just wanna go to sleep, stay here if you like, if nt then forget it, well i dont know , whos got the chopper."
				   )

t8 = Tenant.create(:name => 'Karen Castro', :email => 'kcastro@gmail.com', :password => "chicken", :password_confirmation => "chicken")
p8 = Property.create(:street_address => '85 Woodville Road', :suburb => 'Belconnen', :state => 'ACT', :postcode => 2616)
r8 = Review.create( 
				   :time_lived => 'Lived here for 3 years from Feb 2009 to 2012', 
				   :building_condition => "place is great for a family. The building is beautiful, and big enough for a growing family",
				   :kitchen_condition => 'almost new, everything modern. The kitchen is small, thats the only problem, wish i was still there.', 
				   :bathroom_condition => "Pretty average but what do you expect for the price. You can get what you need done. A girl's best place for her morning make up.", 
				   :bedroom_condition => "Fun nights here,, hehehe, that is all you need. This place isn't a mansion but it does the trick, the place is a awesome and nice.",
				   :area_crime => "Safe, would recommend walking out after dark alone though, some annoying parties on saturday nights. Lucky if you get invited", 
				   :area_proximity => "Close to shops and transport which was great but if you need something in a hurry you'll still need a car.", 
				   :property_management => "In this case i had really nice girl to deal with, she was really attentive and on the money everytime there was an issue. Definitely a plus.",
				   :overall_comment => "I loved my time there, for the money you could do alot worse. Stayed during my favourite season, walks on the evening paths were always relaxing with the kids"
				   )

t9 = Tenant.create(:name => 'Prince Royce', :email => 'proyce@gmail.com', :password => "chicken", :password_confirmation => "chicken")
p9 = Property.create(:street_address => '59 Lim Street', :suburb => 'Guildford', :state => 'NSW', :postcode => 2768)
r9 = Review.create( 
				   :time_lived => 'Was there for 6 months from October 2011', 
				   :building_condition => "Condition is ok, old though. However with a bit of work should not pose much of a hassle.",
				   :kitchen_condition => 'nice wallpaper, gas!! thank God. The kitchen was great for parties as the layout is spacious and allows for alot of friends drink up.', 
				   :bathroom_condition => "Pretty average but what do you expect for the price. You can get what you need done. As a girl i was praying for a bigger mirror.", 
				   :bedroom_condition => "Big enough, that is all you need. This place isn't a mansion but it does the trick, the place is a little old but you probably already know that.",
				   :area_crime => "Safe in the day, wouldn't recommend walking out after dark alone though, atleast if you are a female..", 
				   :area_proximity => "Close to shops and transport which was great but if you need something in a hurry you'll still need a car.", 
				   :property_management => "shite, Shite! what do you expect, everytime we had an issue it was a whirlwind to get anyhting done, it was delay after delay after delay.",
				   :overall_comment => "I loved my time there but it was more coz of my friends. A place to stay while you finish up studies or work part-time. Permanently though look elsewhere. An ok place to stay for 12 months, Nothing more. Rent was acceptable."
				   )

t10 = Tenant.create(:name => 'Ricky Nickson', :email => 'rnickson@gmail.com', :password => "chicken", :password_confirmation => "chicken")
p10 = Property.create(:street_address => '78 Potty Street', :suburb => 'Airlie Beach', :state => 'QLD', :postcode => 4802)
r10 = Review.create( 
				   :time_lived => 'Lived here for 8 months from June 2011', 
				   :building_condition => "Worst place ever, old. Ugly as shit, everything is broken. Do not stay here, its a shithole.",
				   :kitchen_condition => "shitty tops, no electric, no gas. The kitchen is for food and to eat, if you look at it that way then sure theres no problem i suppose.", 
				   :bathroom_condition => "Old tub, not good for romance. But who cares as long as you can get what you need done. I lived with a couple of blokes, so it was ok for us.", 
				   :bedroom_condition => "Big enough, that is all you need. This place isn't a mansion but it does the trick, the place is a little old but you probably already know that.",
				   :area_crime => "nut cases walking around during the daytime, a little less at night. But it was all shit anyway!!!.", 
				   :area_proximity => "Close to shops and transport but if you a ride a bike, prepare to get alot of exercise going up hill.", 
				   :property_management => "Probably the only thing that was good about this place was irronically the real estate. They probably knew what a shit whole the place was and were already prepared",
				   :overall_comment => "A massive shit hole!!,A massive shit hole!!,A massive shit hole!!,A massive shit hole!! Do not stay here. Its a rip off, the place is ugly and old, there are rats, and it the place stiks like shit. I didnt have anything better at the time, so i stayed but if you do, then you should stay away."
				   )

p1.reviews << r1
p2.reviews << r2
p3.reviews << r3
p4.reviews << r4
p5.reviews << r5
p6.reviews << r6
p7.reviews << r7
p8.reviews << r8
p9.reviews << r9
p10.reviews << r10

t1.reviews << r1
t2.reviews << r2
t3.reviews << r3
t4.reviews << r4
t5.reviews << r5
t6.reviews << r6
t7.reviews << r7
t8.reviews << r8
t9.reviews << r9
t10.reviews << r10

t1.properties << p1
t2.properties << p2
t3.properties << p3
t4.properties << p4
t5.properties << p5
t6.properties << p6
t7.properties << p7
t8.properties << p8
t9.properties << p9
t10.properties << p10



