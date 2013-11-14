# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = city.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#Division.create(title:'Eastern Conference',photo:'eastern.jpg')
#Division.create(title:'Western Conference',photo:'western.jpg')
Team.create(division_id: 1,logo:'Heat.jpg',name:'Miami Heat',generalManageer:'Pat Riley',city:'Miami, FL',arena:'American Airline Centre',yearfounded:'1988')
Team.create(division_id: 2,logo:'lacker.jpg',name:'Los Angeles Lakers',generalManageer:'Goerge',city:'Los Angeles, CA',arena:'Staples Center',yearfounded:'1947')
Team.create(division_id: 1,logo:'chicago.jpg',name:'Chicago bulls',generalManageer:'Gar Forman',city:'Chicago, IL',arena:'United Center',yearfounded:'1966')
Team.create(division_id: 1,logo:'Knicks.jpg',name:'New York Knicks',generalManageer:'Glen Grunwald',city:'Manhattan, New York city',arena:'Madison Square Garden',yearfounded:'1946')
Team.create(division_id: 1,logo:'Pacers.jpg',name:'Indiana Pacers',generalManageer:'Kevin Pritchard',city:'Indianapolis, IN',arena:'Bankers Life Fieldhouse',yearfounded:'1967')


