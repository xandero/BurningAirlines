User.destroy_all
Airplane.destroy_all
Flight.destroy_all
Reservation.destroy_all

u1 = User.create(:name => 'Mario', :is_admin => 'true', :password => 'fly', :password_confirmation => 'fly')
u2 = User.create(:name => 'Xander', :is_admin => 'true', :password => 'fly', :password_confirmation => 'fly')
u3 = User.create(:name => 'Kim', :password => 'fly', :password_confirmation => 'fly')
u4 = User.create(:name => 'Kate', :password => 'fly', :password_confirmation => 'fly')

a1 = Airplane.create(:name => 'Bessie 747', :row => 64, :column => 10)
a2 = Airplane.create(:name => 'Claudia 767', :row => 55, :column => 7)
a3 = Airplane.create(:name => 'Sophia 777', :row => 60, :column => 9)
a4 = Airplane.create(:name => 'Angelina G6', :row => 8, :column => 2)

f1 = Flight.create(:flight_num => 1, :origin => 'Dubai', :destination => 'New York')
f2 = Flight.create(:flight_num => 2, :origin => 'Berlin', :destination => 'Oslo')
f3 = Flight.create(:flight_num => 3, :origin => 'Paris', :destination => 'Ottawa')
f4 = Flight.create(:flight_num => 4, :origin => 'Budapest', :destination => 'Nairobi')

r1 = Reservation.create(:seat_column => 'A', :seat_row => 3)
r2 = Reservation.create(:seat_column => 'C', :seat_row => 32)
r3 = Reservation.create(:seat_column => 'J', :seat_row => 23)
r4 = Reservation.create(:seat_column => 'A', :seat_row => 2)

r1.user = u1
r2.user = u2
r3.user = u3
r4.user = u4

r1.flight = f1
r2.flight = f2
r3.flight = f3
r4.flight = f4

f1.airplane = a1
f2.airplane = a2
f3.airplane = a3
f4.airplane = a4

r1.save
r2.save
r3.save
r4.save
f1.save
f2.save
f3.save
f4.save
