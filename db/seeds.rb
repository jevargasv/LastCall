# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Beer.destroy_all
Brewery.destroy_all
User.destroy_all

#Users 
demoUser = User.create!(username:"BeerLover", email:"BeerLover@gmail.com", password:"password")
user1 = User.create!(username:"BeerFan4Ever", email:"beerfan@gmail.com", password:"password")
user2 = User.create!(username:"BeerBeerBeer", email:"beerbeerbeer@gmail.com", password:"password")
user3 = User.create!(username:"ILoveBeer", email:"ilovebeer@aol.com", password:"password")
user4 = User.create!(username:"CoorsLite4Lyfe", email:"coorsfan@coors.com", password:"password")
user5 = User.create!(username:"Hoptastic", email:"hop@hop.com", password:"password")
user6 = User.create!(username:"YumBeer", email:"mmmburrr@netscape.net", password:"password")

#Breweries

stone = Brewery.create!(name:"Stone Brewing Co.", location:"Escondido, California", description:" Stone Brewing is a brewery headquartered in Escondido, California, USA. Founded in 1996 in San Marcos, California, it is the largest brewery in Southern California. Based on 2016 sales volume it is the eighth largest craft brewery in the United States. ")
alchemist = Brewery.create!(name:"The Alchemist", location:"Stowe,Vermont", description:"The Alchemist is a family run brewery specializing in fresh, unfiltered IPA. John and Jen Kimmich originally opened The Alchemist as a 60 seat brew pub in the village of Waterbury in 2003. After eight years of success and growing popularity, they decided to open a small production brewery. Today The Alchemist currently operates two breweries in Vermont and distributes Heady Topper and Focal Banger throughout the state.")
samadams = Brewery.create!(name:"Samuel Adams Boston Brewery ", location:"Boston, Massachussets", description:"Well-known brewery with a long history lures locals & visitors with tours, tastings & a gift shop.")
bluepoint = Brewery.create!(name:"Blue Point", location:"Patchogue, NY", description:"At Blue Point, we brew beer that stands up to New York's standards. We know it’s good, they know it’s good, and if someone disagrees, f*** ‘em. We first and foremost brew beer that we want to drink. If there’s some leftover, we’ll sell it. ")
#   = Brewery.create!(name:" ", location:" ", description:" ")
#   = Brewery.create!(name:" ", location:" ", description:" ")


# samadams.photo.attach(io: open('app/assets/images/samadamslogo.png'), filename: 'samadamslogo.png')
# alchemist.photo.attach(io: open('app/assets/images/alchemistlogo.jpg'), filename: 'alchemistlogo.jpg')
# stone.photo.attach(io: open('app/assets/images/stonelogo.png'), filename: 'stonelogo.png')
# bluepoint.photo.attach(io: open('app/assets/images/bluepointlogo.png'), filename: 'bluepointlogo.png')



#   = Brewery.create!(name:" ", location:" ", description:" ")
#   = Brewery.create!(name:" ", location:" ", description:" ")
#   = Brewery.create!(name:" ", location:" ", description:" ")



#Beers
stone1 = Beer.create!(name: "Stone IPA", brewery_id: stone.id , style:"IPA", abv:"6.9%", description:"By definition, an India pale ale is hoppier and higher in alcohol than its little brother, pale ale—and we deliver in spades. One of the most well-respected and best-selling IPAs in the country, this golden beauty explodes with tropical, citrusy, piney hop flavors and aromas, all perfectly balanced by a subtle malt character. This crisp, extra hoppy brew is hugely refreshing on a hot day, but will always deliver no matter when you choose to drink it.")
stone2 = Beer.create!(name: "Fear Movie Lions", brewery_id: stone.id , style:"Double IPA", abv:"8.5%", description:"New England-Style IPAs are all the rage. Fans of Stone repeatedly ask for our take on the style, which can be met with some criticism. Rooted in West-Coast style IPAs for decades, how would we do it? Fear no more. Our brewers took the approach to deliver incredibly hoppy and aromatic flavor while keeping it very balanced, and upping the alcohol unnoticeably - nailing this astounding one-of-a-kind creation. Overall this unfiltered double IPA is juiced up with massive tropical & citrus notes. The mild bitterness and relatively dry body compliment the style, and the residual maltiness nicely rounds it out. Lingering lime peel and tropical fruit derived from the hops stand out on the finish, begging one to seek out more. What 3 words pinpoint where this beast was born? The location is printed on the can.")
stone3 = Beer.create!(name: "Buenaveza Salt & Lime Lager", brewery_id: stone.id , style:"Lager", abv:"4.7%", description:"In 1996, Stone Brewing was founded in San Diego County, just minutes from the border. Since then, influence from our southern neighbors has enriched and inspired us on our undying mission to brew bold, flavorful beers. One such inspiration is Stone Xocoveza, our imperial stout originally released in 2014 to bring the rich, complex flavors of Mexican hot chocolate to beer. It’s with mucho gusto that we now follow with our take on a classic lager that is similarly inspired (and tasty) - Stone Buenaveza Salt & Lime Lager.")
# stone1.photo.attach(io: open('app/assets/images/stone_ipa.jpeg'), filename: 'stone_ipa.jpeg')
# stone2.photo.attach(io: open('app/assets/images/fear_movie_lions.jpeg'), filename: 'fear_movie_lions.jpeg')
# stone3.photo.attach(io: open('app/assets/images/buenaviza.jpg'), filename: 'buenaviza.jpg')

alchemist1 = Beer.create!(name: "Heady Topper", brewery_id: alchemist.id, style:"Double IPA", abv:"8.0%", description: "We love hops – that’s why our flagship Double IPA, Heady Topper, is packed full of them. Heady Topper was designed to showcase the complex flavors and aromas these flowers produce. The Alchemist has been brewing Heady Topper since 2003. This Double IPA is not intended to be the strongest or most bitter DIPA. It is brewed to give you wave after wave of hop flavor without any astringent bitterness. We brew Heady Topper with a proprietary blend of six hops – each imparting its own unique flavor and aroma. Take a big sip of Heady and see what hop flavors you can pick out. Orange? Tropical Fruit? Pink Grapefruit? Pine? Spice? There is just enough malt to give this beer some backbone, but not enough to take the hops away from the center stage.")
alchemist2 = Beer.create!(name: "Focal Banger", brewery_id: alchemist.id, style:"American IPA", abv:"7.0%", description:"American IPA with Citra & Mosaic hops.")
alchemist3 = Beer.create!(name: "Luscious", brewery_id: alchemist.id, style:"Stout", abv:"9.0%", description:"British-style imperial stout")
# alchemist1.photo.attach(io: open('app/assets/images/headytopper.jpg'), filename: 'headytopper.jpg')
# alchemist2.photo.attach(io: open('app/assets/images/focalbanger.png'), filename: 'focalbanger.png')
# alchemist3.photo.attach(io: open('app/assets/images/luscious.jpg'), filename: 'luscious.jpg')

sam1 = Beer.create!(name: "Boston Lager", brewery_id: samadams.id, style:"Lager", abv:"5.0%", description:"Samuel Adams Boston Lager helped lead the American beer revolution, reviving a passion for full-flavored brews.")
sam2 = Beer.create!(name: "Octoberfest", brewery_id: samadams.id, style:"Marzen", abv:"5.3%", description:"In 1810, the Oktoberfest tradition was born when Munich celebrated the Crown Prince's wedding with a special beer and 16-day party. Our version of this classic style blends hearty malts for a deep, smooth flavor with notes of caramel, creating a brew that’s perfect for the season, or whatever you're celebrating")
sam3 = Beer.create!(name: "Cherry Wheat", brewery_id: samadams.id, style:"American Wheat Ale", abv:"5.3%", description:"Distinct Cherry Tartness with a Touch of Sweet Honey.")
# sam1.photo.attach(io: open('app/assets/images/bostonlager.jpeg'), filename: 'bostonlager.jpeg')
# sam2.photo.attach(io: open('app/assets/images/octoberfest.jpg'), filename: 'octoberfest.jpg')
# sam3.photo.attach(io: open('app/assets/images/cherrywheat.jpeg'), filename: 'cherrywheat.jpeg')


bluepoint1 = Beer.create!(name: "Toasted Lager", brewery_id: bluepoint.id , style:"Lager", abv:"5.5%", description:"Toasted Lager was originally named for the “toasted” characteristics of our original direct-fire brick kettle. Our World Beer Cup gold medal winning flagship brew is brewed with a blend of six specialty malts for a flavor as rich and unique as the town it’s from. Toasted Lager’s balanced flavor of malt and hops makes for easy drinking and our special proprietary lager yeast produces an exceptional, long-lasting smooth finish.")
bluepoint2 = Beer.create!(name: "Imperial Sunhine", brewery_id: bluepoint.id , style:"Blonde Ale", abv:"9.6%", description:"Our Imperial Sunshine is a bright, refreshing brew with a `bit of punch` - not for the faint hearted. Brewed with orange peel, this strong blonde ale packs a nose reminiscent of orange Tic Tacs, hard candy and our favorite non-alcoholic drink, Tang. But don't get it twisted... the drinkability on this one will have you waking up wondering how you lost your shoe. Enjoy the trip!")
bluepoint3 = Beer.create!(name: "Hoptical Illusion", brewery_id: bluepoint.id , style:"IPA", abv:"7.0%", description:"Plenty of hops are added to this brew in 5 different ways, which allows the “Essence of the Hop” to burst through and give that signature resiny, citrus-filled flavor for which Hoptical Illusion is known. This award-winning IPA is truly a hop lover’s dream.")
# bluepoint1.photo.attach(io: open('app/assets/images/toasted_lager.png'), filename: 'toasted_lager.png')
# bluepoint2.photo.attach(io: open('app/assets/images/imperial_sunshine.png'), filename: 'imperial_sunshine.png')
# bluepoint3.photo.attach(io: open('app/assets/images/hoptical_illusion.png'), filename: 'hoptical_illusion.png')

#  = Beer.create!(name: "", brewery_id: , style:"", abv:"", description:"")
#  = Beer.create!(name: "", brewery_id: , style:"", abv:"", description:"")
#  = Beer.create!(name: "", brewery_id: , style:"", abv:"", description:"")
#  = Beer.create!(name: "", brewery_id: , style:"", abv:"", description:"")
#  = Beer.create!(name: "", brewery_id: , style:"", abv:"", description:"")
#  = Beer.create!(name: "", brewery_id: , style:"", abv:"", description:"")
#  = Beer.create!(name: "", brewery_id: , style:"", abv:"", description:"")
#  = Beer.create!(name: "", brewery_id: , style:"", abv:"", description:"")
#  = Beer.create!(name: "", brewery_id: , style:"", abv:"", description:"")