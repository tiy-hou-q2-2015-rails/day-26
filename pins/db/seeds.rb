vitaly = User.create username: "vitaly"
leroy = User.create username: "its-leh-roy"


vitaly.pins.create photo_url: "http://lorempixel.com/output/nightlife-q-c-640-480-3.jpg", url: "http://reddit.com"
vitaly.pins.create photo_url: "http://lorempixel.com/output/nightlife-q-c-640-480-4.jpg", url: "http://twitch.tv"

leroy.pins.create photo_url: "http://lorempixel.com/output/nightlife-q-c-640-480-1.jpg", url: "http://soulruckus.com"
leroy.pins.create photo_url: "http://lorempixel.com/output/nightlife-q-c-640-480-5.jpg", url: "http://themat.com"
leroy.pins.create photo_url: "http://lorempixel.com/output/sports-q-c-640-480-5.jpg", url: "http://allthingsgym.com"
