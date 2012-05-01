puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Bernard Banta', :email => 'banta.bernard@gmail.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => DateTime.now
puts 'New user created: ' << user.name

user2 = User.create! :name => 'Second User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => DateTime.now
puts 'New user created: ' << user2.name

user.add_role :admin

puts 'SETTING UP A NEW DISEASE'
disease = Disease.create! :name => 'Malaria', :location => 'Chiromo, Nairobi, Kenya', :reported_cases => "13",
:transmission_mode => "Mosquito bites", :signs => "Weak joins", :more_info => "Malaria is a disease..."
puts 'New disease create: ' << disease.name

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
