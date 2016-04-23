# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

#User.create(first_name: "troy", last_name: "leach", email: "troy@email.com", phone: "1231231234", password: "87654321")
#Diving.create(title: "2 Tank boat dive", price: 90)
#Diving.create(title: "2 Tank twilight dive", price: 160)
#Training.create(title: "scuba diver course", price: 275)
#Training.create(title: "open water certification", price: 425)
Vacation.create(user_id: 1,
                dates_array: [
                               1482040800000,
                               1482127200000,
                               1482213600000,
                               1482300000000,
                               1482386400000,
                               1482472800000
                             ],
               diving_objects:[{
                                "title": "2 Tank boat dive",
                                "price": 90,
                                "description": "2 tanks of boat diving",
                              },
                              {
                                "title": "2 Tank Twilight dives",
                                "price": 110,
                                "description": "2 tank twilight dive",
                              }],
               training_objects: 
                              [{
                                "title": "scuba diver course",
                                "price": 275,
                                "description": "this is the scuba diving course",
                              },
                              {
                                "title": "open water certification",
                                "price": 425,
                                "description": "this is the open water certifications",
                              }])  
Vacation.create(user_id: 2,
                dates_array: [
                               1480312800000,
                               1480485600000,
                               1480658400000
                             ],
               diving_objects:[{
                                "title": "2 Tank boat dive",
                                "price": 90,
                                "description": "2 tanks of boat diving",
                              },
                              {
                                "title": "2 Tank Twilight dives",
                                "price": 110,
                                "description": "2 tank twilight dive",
                              },
                              {
                                "title": "Beach One 1 tank",
                                "price": 60,
                                "description": "this is a beach dive",
                              }],
               training_objects: 
                              [{
                                "title": "scuba diver course",
                                "price": 275,
                                "description": "this is the scuba diving course",
                              },
                              {
                                "title": "open water certification",
                                "price": 425,
                                "description": "this is the open water certifications",
                              }])  
                             
