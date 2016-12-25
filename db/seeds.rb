# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
User.create("first_name": 'troy', "last_name": "leach", "email": "troyleach29@gmail.com", "admin": true, "password": "password", "password_confirmation": "password")

Diving.create("title": "2 Tank boat dive", "price": 90, "description": "this is the description")
Diving.create("title": "2 Tank twilight dives", "price": 145, "description": "this is the description")
Diving.create("title": "3 Tank boat dives", "price": 130, "description": "this is the description")
Diving.create("title": "3 Tank twilight dives", "price": 180, "description": "this is the description")
Diving.create("title": "Beach 1 tank", "price": 45, "description": "this is the description")
Diving.create("title": "Night dive", "price": 34, "description": "this is the description")
Diving.create("title": "Bubble watcher", "price": 20, "description": "this is the description")
Diving.create("title": "Private Charter (Maximum 6 Divers)", "price": 480, "description": "this is the description")
Diving.create("title": "Private dive master", "price": 480, "description": "this is the description")
Diving.create("title": "Whale watching", "price": nil, "description": "this is the description")

Training.create("title": "Scuba Diver Course:", "price": 275, "description": "this is the description")
Training.create("title": "Open Water Diver Certification:", "price": 425, "description": "this is the description")
Training.create("title": "Open Water Certification PLUS: (Includes Nitrox Certification", "price": 525, "description": "this is the description")
Training.create("title": "Advanced Adventurer: (Number or required dives logged varies depending on the specialties selected)", "price": 50, "description": "this is the description")
Training.create("title": "Advanced Open Water Diver: (Number or required dives logged varies depending on the specialties selected)", "price": 200, "description": "this is the description")
Training.create("title": "Scuba Skills Update:", "price": 160, "description": "this is the description")

Specialty.create("title": "Boat Diving", "price": nil, "description": "this is the description")
Specialty.create("title": "Deep Diving", "price": nil, "description": "this is the description")
Specialty.create("title": "Navigation", "price": nil, "description": "this is the description")
Specialty.create("title": "Night Diving and Limited Visibility", "price": nil, "description": "this is the description")
Specialty.create("title": "Nitrox EAN", "price": nil, "description": "this is the description")
Specialty.create("title": "Perfect Buoyancy", "price": nil, "description": "this is the description")
Specialty.create("title": "Science of Diving", "price": nil, "description": "this is the description")
Specialty.create("title": "Stress Rescue", "price": nil, "description": "this is the description")
Specialty.create("title": "Snorkeling", "price": nil, "description": "this is the description")
Specialty.create("title": "Try Scuba Diving Beach - 1 Tank", "price": 80, "description": "this is the description")
Specialty.create("title": "Try Scuba Diving Beach - 1 Tank", "price": 130, "description": "this is the description")


Rental.create("title": "Commplete Set (BCD, Regulator, Mask and Fins", "price": 25, "description": "this is the description")
Rental.create("title": "BCD", "price": 10, "description": "this is the description")
Rental.create("title": "Regulator", "price": 10, "description": "this is the description")
Rental.create("title": "Wetsuit", "price": 10, "description": "this is the description")
Rental.create("title": "Mask and Fins", "price": 10, "description": "this is the description")
Rental.create("title": "Light", "price": 10, "description": "this is the description")
Rental.create("title": "Nitrox Tank", "price": 10, "description": "this is the description")
Rental.create("title": "100 CC Tank", "price": 5, "description": "this is the description")

MiscellaneousPricing.create("title": "Marine Park Fee", "price": 2.5, "description": "Marine park fee per day")
