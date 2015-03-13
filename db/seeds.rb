# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create(:name => 'Mario', :password => 'fly', :password_confirmation => 'fly')
u2 = User.create(:name => 'Xander', :password => 'fly', :password_confirmation => 'fly')
u3 = User.create(:name => 'Kim', :password => 'fly', :password_confirmation => 'fly')
u4 = User.create(:name => 'Kate', :password => 'fly', :password_confirmation => 'fly')
