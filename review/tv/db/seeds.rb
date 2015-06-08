breaking_bad = Show.create title: "Breaking Bad"
gilmore_girls = Show.create title: "Gilmore Girls"

Actor.create show: breaking_bad,  character: "Walter White", first_name: "Bryan", last_name: "Cranston"
Actor.create show: breaking_bad,  character: "Jesse Pinkton", first_name: "Aaron", last_name: "Paul"
Actor.create show: gilmore_girls, character: "Lorelai Gilmore", first_name: "Lauren", last_name: "Graham"
Actor.create show: gilmore_girls, character: "Rory Gilmore", first_name: "Alexis", last_name: "Bledel"
