

jwo = User.create! username: "jwo", password: "12345"
bob = User.create! username: "bob", password: "12345"

Pin.create! user: jwo, link: "http://tacospin.com/", photo_url: "http://www.foodandfriendshipsantabarbara.com/wp-content/uploads/2013/05/taco.jpg"
Pin.create! user: bob, link: "http://ohmyveggies.com/", photo_url: "http://ohmyveggies.com/wp-content/uploads/2013/06/spring_berry_salad_with_lemon_verbena_vinaigrette_feature.jpg"
