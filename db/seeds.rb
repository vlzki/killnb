# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Job.destroy_all
User.destroy_all

assets = [
  {
    username: "Ping Pong",
    password: "kill001",
    email: "pingpong@yopmail.com",
    city: "Shangaï",
    weapons: "Balles de pingpong",
    profile_description: "Ping Pong is one of the best killer of Shangaï. He is also known as chopsticks.",
    number_of_kills: "10",
    xp_level: "Experienced",

  },
  {
    username: "Banana Slip",
    password: "kill002",
    email: "bananaslip@yopmail.com",
    city: "Basse Terre",
    weapons: "Peaux de banane",
    profile_description: "Banana Slip is one of the best amateur hitman of the island.",
    number_of_kills: "2",
    xp_level: "Amateur",
  },
  {
    username: "Atomic Bimbo",
    password: "kill003",
    email: "atomicslim@yopmail.com",
    city: "Titty Hill",
    weapons: "Implants mamaires",
    profile_description: "Boobs, Boobs and Boobs. She is all boobs!",
    number_of_kills: "30",
    xp_level: "Pro",
  },
  {
    username: "Crane d'oeuf",
    password: "kill004",
    email: "cranedoeuf@yopmail.com",
    city: "Cailloux sur Fontaines",
    weapons: "Peigne",
    profile_description: "Really close from Lyon (FR) Crane d'oeuf is skilled and trust me you don't want to get to meet his comb... ",
    number_of_kills: "6",
    xp_level: "Semi-amateur",
  },
  {
    username: "Globulus",
    password: "kill005",
    email: "globulus@yopmail.com",
    city: "Emjfjallajökull",
    weapons: "Bulles de savon",
    profile_description: "Ping Pong is one of the best killer of Shangaï. He is also knoww as chopsticks.",
    number_of_kills: "10",
    xp_level: "Experienced",
  },
  {
    username: "Jo la frite",
    password: "kill006",
    email: "jolafrite@yopmail.com",
    city: "Bruxelles",
    weapons: "frites",
    profile_description: "Ping Pong is one of the best killer of Shangaï. He is also knoww as chopsticks.",
    number_of_kills: "10",
    xp_level: "Experienced",
  },
  {
    username: "Blanche neige",
    password: "kill007",
    email: "blancheneige@yopmail.com",
    city: "Hallstadt",
    weapons: "Queue de pomme",
    profile_description: "Ping Pong is one of the best killer of Shangaï. He is also knoww as chopsticks.",
    number_of_kills: "10",
    xp_level: "Experienced",
  },
  {
    username: "Mister Munster",
    password: "kill008",
    email: "mmunster@yopmail.com",
    city: "Munster",
    weapons: "Croutes de fromage",
    profile_description: "Ping Pong is one of the best killer of Shangaï. He is also knoww as chopsticks.",
    number_of_kills: "10",
    xp_level: "Experienced",
  },
  {
    username: "Jeanne 3 pattes",
    password: "kill010",
    email: "jeanne@yopmail.com",
    city: "Lourdes",
    weapons: "Déambulateur",
    profile_description: "Ping Pong is one of the best killer of Shangaï. He is also knoww as chopsticks.",
    number_of_kills: "10",
    xp_level: "Experienced",
  },
  {
    username: "Le Poussin",
    password: "kill011",
    email: "coincoin@yopmail.com",
    city: "Parentis",
    weapons: "Lancer de poussin",
    profile_description: "Ping Pong is one of the best killer of Shangaï. He is also knoww as chopsticks.",
    number_of_kills: "10",
    xp_level: "Experienced",
  },
  {
    username: "Manchot chaud",
    password: "kill012",
    email: "froid@yopmail.com",
    city: "Antartique",
    weapons: "Coup d'aile",
    profile_description: "Ping Pong is one of the best killer of Shangaï. He is also knoww as chopsticks.",
    number_of_kills: "10",
    xp_level: "Experienced",
  },
  {
    username: "Monsieur Baleine",
    password: "kill013",
    email: "beluga@lourd.com",
    city: "Seychelles",
    weapons: "Ecrasement",
    profile_description: "Ping Pong is one of the best killer of Shangaï. He is also knoww as chopsticks.",
    number_of_kills: "10",
    xp_level: "Experienced",
  },
  {
    username: "Kevin la cuillère",
    password: "kill014",
    email: "kevin@maitregims.fr",
    city: "Sarcelles",
    weapons: "Petite cuillère",
    profile_description: "Ping Pong is one of the best killer of Shangaï. He is also knoww as chopsticks.",
    number_of_kills: "10",
    xp_level: "Experienced",
  },
  {
    username: "Sylvie Pudubec",
    password: "kill015",
    email: "freedent@tudevrais.org",
    city: "Parentis",
    weapons: "Haleine de porc",
    profile_description: "Ping Pong is one of the best killer of Shangaï. He is also knoww as chopsticks.",
    number_of_kills: "10",
    xp_level: "Experienced",
  },
  {
    username: "Kill Heels",
    password: "kill016",
    email: "sm@bill.br",
    city: "New York",
    weapons: "Talons Aiguilles",
    profile_description: "Ping Pong is one of the best killer of Shangaï. He is also knoww as chopsticks.",
    number_of_kills: "10",
    xp_level: "Experienced",
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
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487777655/alv4cgcpcjqogdawhli0.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487778946/pingpong-avatar_hnfut4.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487778953/atomicslim-avatar_iz09pj.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487778952/snowwhite-avatar_rfhinx.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487778948/jeanne-avatar_zxr8mi.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487778946/pingpong-avatar_hnfut4.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487778031/kh4ikey3ha7ay2jmmaif.png",
  "http://res.cloudinary.com/j0h4nf/image/upload/v1487777687/hgnh5cauic9mi1ksbbjs.png",
]

assets.each_with_index do |asset, ind|
  user = User.new(asset)
  user.save!
  user.picture_url = urls[ind]
end
