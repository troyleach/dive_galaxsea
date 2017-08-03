
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# The below seeds are from production (really it was staging after my little mishap) Aug 2, 2017
# When and if I ever have a user log in I will have to send these peole a update password link (firs 11 records)

User.create!([
  {first_name: "troy", last_name: "leach", email: "troyleach29@gmail.com", phone: nil, password: "80d793f5", auth_token: "b32b59ec8d08206981481033e1d6cac3", admin: true, comments: nil, password_confirmation: "80d793f5", password_digest: nil},
  {first_name: "Jeffrey", last_name: "Miller", email: "mailjeffm@aol.com", phone: "18134422268", password: "07aea2d7", auth_token: "7179f1369d0dfedd646610a23fc636b7", admin: false, comments: "Would like to dive Saturday morning, Feb 18th.  Cruise ship Brilliance Of The Seas, Royal Carribean docks at 8am.  2 people, both advanced open water.", password_confirmation: "07aea2d7", password_digest: nil},
  {first_name: "larry", last_name: "de brock", email: "larredebrock@gmail.com", phone: "529841526269", password: "8fc2d77b", auth_token: "ca44f5828515542929d29c7bd8c2310e", admin: false, comments: "Dear Sir Madam,\n\n\nMy name is Larry de Brock, 42 years old, from Holland\n\nI am a OWSI, #348353 I did my IDC with Poseidon divers in Dahab, Egypt in 2014\n\nAfter my IDC i worked 2 seasons in Dahab, 1 as a divemaster and 1 as instructor\n\nLast year i worked a season in Bonaire, with Bonaire dive and adventure\n\n\nNow i have arrived in Mexico, and i'm looking for a place to work,\n\nCurrently i stay in Playa del Carmen, but in a few days i can be anywhere in Mexico\n\n\nAre there possibilities at your dive centre?\n\nI speak fluently English, Dutch and reasonable German and have my own dive gear.\n\nDear regards,\n\nLarry de Brock\nMail: Larredebrock@gmail.com\nTelephone: +52 984 152 6269", password_confirmation: "8fc2d77b", password_digest: nil},
  {first_name: "Stephen", last_name: "Zweck-Bronner", email: "jzbronner@comcast.net", phone: "13039085034", password: "41191fa9", auth_token: "99a366c61a1091c99040b1cdfb823522", admin: false, comments: "Hi we are a certified father and son (15) staying in Playa Del Carmen at the Grand Hyatt but wanting to do a dive over in Cozumel. We have never been to Mexico. Denver Divers in Denver Colorado gave us your information.\nWe are in Mexico Wednesday to Sunday (March 29-April 2) so looking to dive just ONE DAY.  Preferably Thursday, Friday or Saturday March 30, 31, or April 1. Wife and daughter do not dive but will be interested in going over to Cozemel with us. Not sure of all the transportation requirements to get the 4 of us over to Cozumel from Playa Del Carmen or what type of dive would be best for us given our short time there so please let us know your recommendations. Thanks so much, Steve Zweck-Bronner", password_confirmation: "41191fa9", password_digest: nil},
  {first_name: "Mike", last_name: "deBettencourt", email: "michael.debettencourt@aecom.com", phone: "17194948299", password: "bb2fea60", auth_token: "855749d1ef45a7c2e8ead7c45ee159cb", admin: false, comments: "I will be in Cozumel the week of May 6 thru My 13th. I would like to arrange for a couple dives. Dates are fairly flexible. I am currently taking a Nitrox class, which will be completed by then.", password_confirmation: "bb2fea60", password_digest: nil},
  {first_name: "Matt", last_name: "Woods", email: "matthew.j.woods@me.com", phone: "13525850575", password: "480dda29", auth_token: "ea21535c80a4753650b3f8502500f08b", admin: false, comments: nil, password_confirmation: "480dda29", password_digest: nil},
  {first_name: "Martijn", last_name: "Ende", email: "martijnvdende@me.com", phone: "31620397801", password: "6ec96eda", auth_token: "88bed37c145e9992e1cba18529645a4d", admin: false, comments: "Hi Kim,\n\nWe are staying in Akumal richt now, but the sea is to rough to go diving. So we would like to come over to Cosumel for a few days. My Son needs two more open water dives to complete his SSI certification. How are the conditions On Cozumel? Is the sea less rough? Is it possible to go diving? In other words is IT worth the trip from Akumal?\n\nKind regards,\n\nMartijn", password_confirmation: "6ec96eda", password_digest: nil},
  {first_name: "Mark", last_name: "Bunkall", email: "markbunkall@gmail.com", phone: "18013470754", password: "7a4ec766", auth_token: "1783297b327967ea4822b36263618fef", admin: false, comments: nil, password_confirmation: "7a4ec766", password_digest: nil},
  {first_name: "Omar", last_name: "Recio", email: "omarrecio@gmail.com", phone: "528441258337", password: "53db4528", auth_token: "5e0bb8b9e71544ec1fd84571a647c9b8", admin: false, comments: "We have a family vacation .\nWe are a big group just 4 of us dive certified...Is there a chance with you to have a tour that some dive and the others snorkel.\nThanks for your help.\nOmar Recio", password_confirmation: "53db4528", password_digest: nil},
  {first_name: "Kevin", last_name: "Dunn", email: "kevind2574@yahoo.com", phone: "14054641535", password: "daefdd14", auth_token: "57aa2b8f080673b419c92df63c7d7a14", admin: false, comments: "Hi, We would like to finish our pool certification and open water dives with you on 6/12-6/13. We would have two kids, our daughter 9 and son 16, that would want to snorkel or swim while we are diving. Can you help us with this? thanks!", password_confirmation: "daefdd14", password_digest: nil},
  {first_name: "Jen", last_name: "England", email: "mutajen@mindspring.com", phone: "13032630037", password: "f9d8da97", auth_token: "51ae40a3b0ddf719d4387a8b7488e054", admin: false, comments: "Hi Kim - Wendel at Denver Divers referred us, we were certified there a few years ago but we've only dived once since so are still kind of newbies. We're flexible about where we go and 2-3 tanks- what do you recommend?\nJen", password_confirmation: "f9d8da97", password_digest: nil}
])

Diving.create!([
  {title: "Bull Sharks (Seasonal)", price: nil, description: nil},
  {title: "3 Tank boat dives", price: "130.0", description: nil},
  {title: "Beach 1 tank", price: "45.0", description: nil},
  {title: "Bubble watcher", price: "20.0", description: nil},
  {title: "Private Charter (Maximum 6 Divers)", price: "480.0", description: nil},
  {title: "2 Tank boat dive", price: "90.0", description: nil},
  {title: "Night dive", price: "65.0", description: nil},
  {title: "Private dive master", price: "50.0", description: nil},
  {title: "Snorkeling with whale sharks (Seasonal)", price: nil, description: nil}
])

Training.create!([
  {title: "Open Water Diver Certification:", price: "425.0", description: nil},
  {title: "Open Water Certification PLUS: (Includes Nitrox Certification", price: "525.0", description: nil},
  {title: "Scuba Skills Update:", price: "160.0", description: nil},
  {title: "Advanced Open Water Diver: (Number or required dives logged varies depending on the specialties selected)", price: "560.0", description: "$200 deposit required. Eight (8) open water dives required to achieve this certification"},
  {title: "Advanced Adventurer: (Number or required dives logged varies depending on the specialties selected)", price: "320.0", description: "$50 deposit required. Five (5) open water dives required to achieve this certification"},
  {title: "Open Water Certification Referral (4 Dives)", price: "295.0", description: nil}
])

Specialty.create!([
  {title: "Deep Diving", price: "150.0", description: "$60 deposit required"},
  {title: "Boat Diving", price: "150.0", description: "$60 deposit required"},
  {title: "Navigation", price: "150.0", description: "$60 deposit required"},
  {title: "Night Diving and Limited Visibility", price: "150.0", description: "$60 deposit required"},
  {title: "Nitrox EAN", price: "190.0", description: "$80 deposit required"},
  {title: "Perfect Buoyancy", price: "150.0", description: "$60 deposit required"},
  {title: "Science of Diving", price: "85.0", description: "$60 deposit required"},
  {title: "Stress Rescue", price: "250.0", description: "$80 deposit required"},
  {title: "Snorkeling", price: "65.0", description: nil},
  {title: "Try Scuba Diving Beach - 1 Tank", price: "80.0", description: nil},
  {title: "Try Scuba Boat Diving 2 Tank", price: "130.0", description: nil},
  {title: "Wreck Diving", price: "150.0", description: "$60 deposit required"}
])

Rental.create!([
  {title: "Commplete Set (BCD, Regulator, Mask and Fins)", price: "25.0", description: nil},
  {title: "BCD", price: "10.0", description: nil},
  {title: "Regulator", price: "10.0", description: nil},
  {title: "Wetsuit", price: "10.0", description: nil},
  {title: "Mask and Fins", price: "10.0", description: nil},
  {title: "Light", price: "10.0", description: nil},
  {title: "Nitrox Tank", price: "10.0", description: nil},
  {title: "100 CC Tank", price: "5.0", description: nil}
])

MiscellaneousPricing.create!([
  {title: "Marine Park Fee", price: "2.5", description: "Marine park fee per day"}
])

# OLD #####
#User.create("first_name": 'troy', "last_name": "leach", "email": "troyleach29@gmail.com")

#Diving.create("title": "2 Tank boat dive", "price": 90, "description": "this is the description")
#Diving.create("title": "2 Tank twilight dives", "price": 145, "description": "this is the description")
#Diving.create("title": "3 Tank boat dives", "price": 130, "description": "this is the description")
#Diving.create("title": "3 Tank twilight dives", "price": 180, "description": "this is the description")
#Diving.create("title": "Beach 1 tank", "price": 45, "description": "this is the description")
#Diving.create("title": "Night dive", "price": 34, "description": "this is the description")
#Diving.create("title": "Bubble watcher", "price": 20, "description": "this is the description")
#Diving.create("title": "Private Charter (Maximum 6 Divers)", "price": 480, "description": "this is the description")
#Diving.create("title": "Private dive master", "price": 480, "description": "this is the description")
#Diving.create("title": "Whale watching", "price": nil, "description": "this is the description")

#Training.create("title": "Scuba Diver Course:", "price": 275, "description": "this is the description")
#Training.create("title": "Open Water Diver Certification:", "price": 425, "description": "this is the description")
#Training.create("title": "Open Water Certification PLUS: (Includes Nitrox Certification", "price": 525, "description": "this is the description")
#Training.create("title": "Advanced Adventurer: (Number or required dives logged varies depending on the specialties selected)", "price": 50, "description": "this is the description")
#Training.create("title": "Advanced Open Water Diver: (Number or required dives logged varies depending on the specialties selected)", "price": 200, "description": "this is the description")
#Training.create("title": "Scuba Skills Update:", "price": 160, "description": "this is the description")

#Specialty.create("title": "Boat Diving", "price": nil, "description": "this is the description")
#Specialty.create("title": "Deep Diving", "price": nil, "description": "this is the description")
#Specialty.create("title": "Navigation", "price": nil, "description": "this is the description")
#Specialty.create("title": "Night Diving and Limited Visibility", "price": nil, "description": "this is the description")
#Specialty.create("title": "Nitrox EAN", "price": nil, "description": "this is the description")
#Specialty.create("title": "Perfect Buoyancy", "price": nil, "description": "this is the description")
#Specialty.create("title": "Science of Diving", "price": nil, "description": "this is the description")
#Specialty.create("title": "Stress Rescue", "price": nil, "description": "this is the description")
#Specialty.create("title": "Snorkeling", "price": nil, "description": "this is the description")
#Specialty.create("title": "Try Scuba Diving Beach - 1 Tank", "price": 80, "description": "this is the description")
#Specialty.create("title": "Try Scuba Diving Beach - 1 Tank", "price": 130, "description": "this is the description")


#Rental.create("title": "Commplete Set (BCD, Regulator, Mask and Fins", "price": 25, "description": "this is the description")
#Rental.create("title": "BCD", "price": 10, "description": "this is the description")
#Rental.create("title": "Regulator", "price": 10, "description": "this is the description")
#Rental.create("title": "Wetsuit", "price": 10, "description": "this is the description")
#Rental.create("title": "Mask and Fins", "price": 10, "description": "this is the description")
#Rental.create("title": "Light", "price": 10, "description": "this is the description")
#Rental.create("title": "Nitrox Tank", "price": 10, "description": "this is the description")
#Rental.create("title": "100 CC Tank", "price": 5, "description": "this is the description")

#MiscellaneousPricing.create("title": "Marine Park Fee", "price": 2.5, "description": "Marine park fee per day")

