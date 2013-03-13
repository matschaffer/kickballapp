# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


team = Team.create(name: 'Ballshevicks')

team.players.create first_name: "Mat", last_name: "Schaffer", number: 42
team.players.create first_name: "Jearvon", last_name: "Dharrie", number: 49
team.players.create first_name: "Justin", last_name: "Campbell", number: 10

User.create(email: 'mat@schaffer.me', password: 'test1234', password_confirmation: 'test1234')