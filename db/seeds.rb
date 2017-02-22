# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
assets = [
  {
    username: "Ping Pong",
    password: "kill001",
    email: "pingpong@yopmail.com",
    city: "Shangaï",
    weapons: "Balles de pingpong",
  },
  {
    username: "Banana Slip",
    password: "kill002",
    email: "bananaslip@yopmail.com",
    city: "Basse Terre",
    weapons: "Peaux de banane",
  },
  {
    username: "Atomic Slim",
    password: "kill003",
    email: "atomicslim@yopmail.com",
    city: "Titty Hill",
    weapons: "Implants mamaires",
  },
  {
    username: "Crane d'oeuf",
    password: "kill004",
    email: "cranedoeuf@yopmail.com",
    city: "Cailloux sur Fontaines",
    weapons: "Peigne",
  },
  {
    username: "Globulus",
    password: "kill005",
    email: "globulus@yopmail.com",
    city: "Emjfjallajökull",
    weapons: "Bulles de savon",
  },
  {
    username: "Jo la frite",
    password: "kill006",
    email: "jolafrite@yopmail.com",
    city: "Bruxelles",
    weapons: "frites",
  },
  {
    username: "Blanche neige",
    password: "kill007",
    email: "blancheneige@yopmail.com",
    city: "Hallstadt",
    weapons: "Queue de pomme",
  },
  {
    username: "Mister Munster",
    password: "kill008",
    email: "mmunster@yopmail.com",
    city: "Munster",
    weapons: "Croutes de fromage",
  },
  {
    username: "Jeanne 3 pattes",
    password: "kill010",
    email: "jeanne@yopmail.com",
    city: "Lourdes",
    weapons: "Déambulateur",
  }
]

urls = [
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487778946/pingpong-avatar_hnfut4.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487778953/atomicslim-avatar_iz09pj.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487778952/snowwhite-avatar_rfhinx.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487778948/jeanne-avatar_zxr8mi.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487778946/pingpong-avatar_hnfut4.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487778031/kh4ikey3ha7ay2jmmaif.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487777687/hgnh5cauic9mi1ksbbjs.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487777655/alv4cgcpcjqogdawhli0.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487777655/alv4cgcpcjqogdawhli0.png"
]

assets.each_with_index do |asset, ind|
  user = User.new(asset)
  user.save!
  user.picture_url = urls[ind] 
end