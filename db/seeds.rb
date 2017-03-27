Booking.delete_all
Guestbook.delete_all
Content.delete_all
Season.delete_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.delete_all

photo1 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406235/Casalverde/index_photo_1.jpg", tag:"villa", number:1)
photo2 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406220/Casalverde/index_photo_2.jpg", tag:"room", number:1)
photo3 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406237/Casalverde/index_photo_3.jpg", tag:"outdoors", number:1)
photo4 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406222/Casalverde/index_photo_4.jpg", tag:"villa", number:2)
photo5 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406227/Casalverde/index_photo_5.jpg", tag:"room", number:2)
photo6 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406223/Casalverde/index_photo_6.jpg", tag:"villa", number:3)
photo7 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406221/Casalverde/bathroom_1.jpg", tag:"room", number:4)
photo8 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406231/Casalverde/swimmingpool_1.jpg", tag:"outdoors", number:2)
photo9 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406234/Casalverde/swimmingpool_2.jpg", tag:"outdoors", number:3)
photo10 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406234/Casalverde/swimmingpool_3.jpg", tag:"outdoors", number:4)
photo11 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406234/Casalverde/swimmingpool_4.jpg", tag:"outdoors", number:5)
photo12 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406223/Casalverde/swimmingpool_5.jpg", tag:"outdoors", number:6)
photo13 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406223/Casalverde/outside_1.jpg", tag:"outdoors", number:7)
photo14 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406220/Casalverde/kitchen_1.jpg", tag:"room", number:5)
photo15 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406221/Casalverde/villa_1.jpg", tag:"villa", number:4)
photo16 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406225/Casalverde/bedroom_1.jpg", tag:"room", number:6)
photo17 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406230/Casalverde/bedroom_2.jpg", tag:"room", number:7)
photo18 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406229/Casalverde/bedroom_3.jpg", tag:"room", number:8)
photo19 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406230/Casalverde/bathroom_2.jpg", tag:"room", number:9)
photo20 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406234/Casalverde/bedroom_4.jpg", tag:"room", number:10)
photo21 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406229/Casalverde/villa_2.jpg", tag:"villa", number:5)
photo22 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406235/Casalverde/villa_3.jpg", tag:"villa", number:6)

header = Content.create(name: "Header", paragraph: "Tranquility, natural beauty, privacy in the heart of the famous Chianti region in Tuscany")

villa_description_short = Content.create(name: "Villa short description", paragraph: "Our lovely family villa, located within walking distance from Tregole in the famous wine region of Chianti Classico, has five spacious bedrooms, three bathrooms and a large swimming pool.")

villa_description_long = Content.create(name: "Villa long description", paragraph: "Our lovely family villa, located within walking distance from Tregole in the famous wine region of Chianti Classico, has five spacious bedrooms and three bathrooms. The villa is centrally located between the vineyards, olive groves and woods that make staying in an area with lots of privacy, tranquility and natural beauty. Tregole itself is a small hamlet with no shops but the nearby towns such as Castellina in Chianti, Siena and Florence are easily reached by car or bicycle.")

outdoor_features = Content.create(name: "Outdoor features", paragraph: "There is an oasis of calm and the area is safe for children. In the garden is a large swimming pool, children's playground, several terraces with sun and shade and there is a beautiful view! If you wish to dine together, you can use the pizza oven or barbecue to prepare delicious dishes from the local area, then you can uitserveren long tables. The neighbors, Brancaia and Fonterutoli, sell one of the best wines of Italy, which will probably fit in well with the self-cooked dinner. This luxurious venue can accommodate up to 16 people and includes many features to make but also facilitate the stay a lot more enjoyable.")

activities = Content.create(name: "Outdoor activities", paragraph: "When it comes to cycling, this area is perfect: beautiful roads, alternating climbs and beautiful scenery combined with historic villages and towns.")

distances = Content.create(name: "Distances", paragraph: "Villa is 500m from Tregole, Castellina in Chianti (including supermarket,restaurants, bars, doctor, pharmacy, church) is 3km away, San Gimignano 22km, Siena 24km and Florence 35km.")

indoor_amentities = Content.create(name: "Indoor Amentities", paragraph:"Private pool (12.5 x 4m, depth: 0.8m-2m) \n Internet \n Pizza oven \n Barbeque \n A dishwasher \n Washing machine \n Library \n Playground \n Table tennis \n Boules \n Hammock \n Mountain Bikes")

outdoor_amentities = Content.create(name: "Outdoor Amentities", paragraph: " Pool 12.5 x 4 meters with sun loungers \n Children playground (swing and slide) \n Trampoline (buried) \n Table tennis \nmTwo mountain bikes (m / f) \n Hammock \n Bowls \n Arcade with Pizza oven and barbecue and long dining table with chairs.")

living_room = Content.create(name: "Living room", paragraph: "TV with satellite dish (Dutch channels) \n DVD player \n Bose sound system \n Library \n two benches \n Armchair \n soapstone Stove \n dining table \n WiFi")

kitchen = Content.create(name: "Kitchen", paragraph: "dining table \n fridge with freezer \n dishwasher \n gas stove with oven \n cutlery, plates, cups and utensils \n coffee machines Senseo & Nespresso \n kettle \n herbs from local growers")

scullery = Content.create(name: "Scullery", paragraph: "fridge with freezer \n induction cooker \n cutlery, plates, cups and utensils")

bedroom1 = Content.create(name: "Bedroom 1", paragraph: "Double bed bla bla")

bedroom2 = Content.create(name: "Bedroom 2", paragraph: "Double bed bla bla")

bedroom3 = Content.create(name: "Bedroom 3", paragraph: "Double bed bla bla")

bedroom4 = Content.create(name: "Bedroom 4", paragraph: "Double bed bla bla")

bedroom5 = Content.create(name: "Bedroom 5", paragraph: "Double bed bla bla")

bathrooms = Content.create(name: "Bathrooms", paragraph: "Two bathrooms upstairs with: Shower cubicles washbasins toilets Towels. Double bathroom downstairs: two shower stalls Two toilets double sink Towels")

terraces = Content.create(name: "Terraces", paragraph: "Terrace 1: Accessible from the kitchen, Garden furniture with cushions, Parasol, firepot. Terrace 2: Barbecue, Furniture, Terrace 3: Furniture, shady")

surroundings = Content.create(name: "Surroundings", paragraph: "Tuscany need be hardly introduced. Millions of tourists annually visit of Italy's most traditional region with its monumental cities Firenze (Florence), Siena, Pisa, Lucca and Arezzo. \n Cas'al verde Tregole located near the village, 3 km from Castellina in Chianti. In the latter town are available all facilities such as: doctor, pharmacy, supermarket, restaurants, church, police, etc ..The immediate area is ideal for (long and adventurous) walks include nearby Etruscan tombs. \n Also lends the Tuscan area is ideal for cycling mountain biking to road bike. More information for cyclists see the following link. \n Tregole is located 13 kilometers north of Siena and 35 kilometers south of Florence in the famous wine region of Chianti Classico. \n Outside the abovementioned cities are also San Gimignano, Volterra, Poggibonsi, Radda, Greve and other famous places in the immediate vicinity.")

Season.create!(start_date: Date.parse("2016-10-29"), end_date: Date.parse("2017-04-01"), nightly_cost: 215.0, min_stay: 3, extra_person_night: 20.0, deposit: 500.0, changeover: false)
Season.create!(start_date: Date.parse("2017-04-01"), end_date: Date.parse("2017-06-24"), nightly_cost: 357.0, min_stay: 3, extra_person_night: 20.0, deposit: 500.0, changeover: false)
Season.create!(start_date: Date.parse("2017-06-24"), end_date: Date.parse("2017-09-02"), nightly_cost: 428.0, min_stay: 7, extra_person_night: 20.0, deposit: 500.0, changeover: true)
Season.create!(start_date: Date.parse("2017-09-02"), end_date: Date.parse("2017-11-04"), nightly_cost: 357.0, min_stay: 3, extra_person_night: 20.0, deposit: 500.0, changeover: false)

User.create(email: "admin@casalverde.nl", password: "casalverde", admin: true)


Booking.create!(start_date: Date.parse("2017-02-01"), end_date: Date.parse("2017-02-04"), number_of_nights: 3, number_of_guests: 6, salutation: "Mr.", first_name: "Henk", insertion: "de", last_name: "Vries", date_of_birth: Date.parse("1972-09-02"), country: "The Netherlands", street: "Naxosdreef", house_number: 6, zip_code: "3312DD", city: "Utrecht", phone_number: "0612321222", email: "Henk@vriesnet.nl", origin: 0, confirmed: true)

Booking.create!(start_date: Date.parse("2017-02-05"), end_date: Date.parse("2017-02-10"), number_of_nights: 5, number_of_guests: 3, salutation: "Mr.", first_name: "Ingrid", insertion: "", last_name: "Langen", date_of_birth: Date.parse("1954-03-02"), country: "The Netherlands", street: "Naxosdreef", house_number: 6, zip_code: "3312DD", city: "Emmen", phone_number: "062121222", email: "Ingrid@vriesnet.nl", origin: 0, confirmed: true)

Booking.create!(start_date: Date.parse("2017-03-01"), end_date: Date.parse("2017-03-04"), number_of_nights: 3, number_of_guests: 6, salutation: "Mr.", first_name: "Johan", insertion: "de", last_name: "Boer", date_of_birth: Date.parse("1990-08-02"), country: "The Netherlands", street: "Langestraat", house_number: 26, zip_code: "1000AD", city: "Amsterdam", phone_number: "0612321222", email: "Johan@lajkdflsajklsa.nl", origin: 2, confirmed: true)

Booking.create!(start_date: Date.parse("2017-03-12"), end_date: Date.parse("2017-03-18"), number_of_nights: 5, number_of_guests: 6, salutation: "Mr.", first_name: "Lieve", insertion: "", last_name: "Belg", date_of_birth: Date.parse("1972-09-12"), country: "Belgium", street: "Bakerstreet", house_number: 26, zip_code: "32121AA", city: "Antwerp", phone_number: "03212321222", email: "Lieve@belige.nl", origin: 0, confirmed: false)

Booking.create!(start_date: Date.parse("2017-04-01"), end_date: Date.parse("2017-04-04"), number_of_nights: 3, number_of_guests: 6, salutation: "Ms.", first_name: "Joke", insertion: "de", last_name: "Meijer", date_of_birth: Date.parse("1990-02-02"), country: "The Netherlands", street: "Langestraat", house_number: 26, zip_code: "1000AD", city: "Amsterdam", phone_number: "06323422", email: "joke@lala.nl", origin: 1, confirmed: true)

Booking.create!(start_date: Date.parse("2017-02-01"), end_date: Date.parse("2017-02-04"), number_of_nights: 3, number_of_guests: 6, salutation: "Ms.", first_name: "Klaas", insertion: "", last_name: "Janssen", date_of_birth: Date.parse("1972-03-12"), country: "Belgium", street: "Bakerstreet", house_number: 26, zip_code: "32121AA", city: "Antwerp", phone_number: "067421222", email: "Klaas@email.nl", origin: 1, confirmed: false)


Guestbook.create(name: "Gert", email: "gert@blabla.com", message: "This place is the best! I love It! Blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", published: true)
Guestbook.create(name: "Ans", email: "ans@pans.com", message: "Wow I love this villa. The area is also very nice. Blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", published: true)
Guestbook.create(name: "Bertus", email: "bertus@depertus.com", message: "Lalalalalalalala Italy is so nice!! lalalalalala. Blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", published: true)
Guestbook.create(name: "Fred", email: "fred@pret.com", message: "I go back every year. It's amazing.. It's true! blah blah blah blah blah blah blah blah blah blah blah blah blah", published: true)
Guestbook.create(name: "Donald Trump", email: "donald@peb.nl", message: "SO STUPID! I HATE THIS VILLA! OWNERS ARE BASTARDS. AND WE DONT LIKE THE WEBSITE. AND WE LOVE TRUMP", published: false)
Guestbook.create(name: "Alfred", email: "alfred@jodokus.kwak", message: "The lake there is beautiful. Lot's of other ducks to play with. blah blah blah blah blah blah blah blah blah blah blah blah", published: false)
Guestbook.create(name: "Donald", email: "donald@its.true", message: "It's not as nice as America but I think it can be number 2. blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", published: false)
Guestbook.create(name: "Vita", email: "vita@depita.com", message: "The rooms are big! The garden has beautiful flowers! blah blah blah blah blah blah blah blah blah blah blah blah", published: false)
