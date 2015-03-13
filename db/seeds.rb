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

a1 = Airplane.create(:name => 'Bessie 747', rows: => '64', columns: => '10')
a2 = Airplane.create(:name => 'Claudia 767', rows: => '55', columns: => '7')
a3 = Airplane.create(:name => 'Sophia 777', rows: => '60', columns: => '9')
a4 = Airplane.create(:name => 'Angelina G6', rows: => '8', columns: => '2')

f1 = Flight.create(:flight_num => '1', :origin => 'Dubai', :destination => 'New York')
f2 = Flight.create(:flight_num => '2', :origin => 'Berlin', :destination => 'Oslo')
f3 = Flight.create(:flight_num => '3', :origin => 'Paris', :destination => 'Ottawa')
f4 = Flight.create(:flight_num => '4', :origin => 'Budapest', :destination => 'Nairobi')

r1 = Reservation.create(:seat_column => 'A', :seat_row => '3')
r2 = Reservation.create(:seat_column => 'C', :seat_row => '32')
r3 = Reservation.create(:seat_column => 'J', :seat_row => '23')
r4 = Reservation.create(:seat_column => 'A', :seat_row => '2')

