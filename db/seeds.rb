# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ballsheviks = Team.create(name: 'Ballsheviks')

ballsheviks.players.create first_name: "Mat", last_name: "Schaffer", number: 42
ballsheviks.players.create first_name: "Jearvon", last_name: "Dharrie", number: 49
ballsheviks.players.create first_name: "Trotter", last_name: "Cashion", number: 10

balladelphia = Team.create(name: 'Balladelphia United')
balladelphia.players.create first_name: 'Justin', last_name: 'Campbell', number: 15
balladelphia.players.create first_name: 'Aaron', last_name: 'Feng', number: 3

palladium = Venue.create(name: 'The Palladium')

Game.create home_team: balladelphia, away_team: ballsheviks, venue: palladium, starts_at: 3.days.from_now

mat = User.create(email: 'mat@schaffer.me', password: 'test1234', password_confirmation: 'test1234')
mat.admin = true
mat.save

