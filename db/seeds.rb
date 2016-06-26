# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jon = User.create(name: "Jonathan", picture: "https://scontent.xx.fbcdn.net/t31.0-8/458168_10150733184903425_1788494013_o.jpg", address: "2 Bukit Timah Road", email: "jonathan@gmail.com", password: "12345678", password_confirmation: "12345678")
hamkimchi = User.create(name: "Hakim", picture: "https://scontent.xx.fbcdn.net/t31.0-8/13047995_10156748183075447_1091362846887509315_o.jpg", address: "8 Stevens Road", email: "hakim@gmail.com", password: "12345678", password_confirmation: "12345678")
siwei = User.create(name: "Siwei", picture: "https://scontent.xx.fbcdn.net/v/t1.0-9/10952073_10152998520333762_3052533513777169906_n.jpg?oh=edca1d5ad4dc7a43abe0d0342fd31880&oe=57FCD9F9", address: "5 Serangoon Road", email: "siwei@gmail.com", password: "12345678", password_confirmation: "12345678")
jolozy = User.create(name: "Joanne", picture: "https://scontent.xx.fbcdn.net/t31.0-8/1900303_10152257352937930_45632765_o.jpg", address: "1 Paya Lebar Crescent", email: "jolozy@gmail.com", password: "12345678", password_confirmation: "12345678")
mary = User.create(name: "Mary", picture: "https://scontent.xx.fbcdn.net/v/t1.0-9/10882339_10153015585870802_7353785806057507023_n.jpg?oh=55e1041b23917c0b469ad71bb7adfaf8&oe=57EBC09F", address: "4 Tampines Road", email: "mary@gmail.com", password: "12345678", password_confirmation: "12345678")

mee = Dish.create(name: "Mee Goreng", img: "http://1.bp.blogspot.com/-f4SBLBe34AQ/UBP7LmlTYmI/AAAAAAAACvk/efNA1jlR-9s/s640/Mee+goreng+recipe.png", price: 3.50, description: "Mee and goreng")
nasi = Dish.create(name: "Nasi Lemak", img: "http://1.bp.blogspot.com/_wjO9ZSr8ZTA/S8dAoPOHqwI/AAAAAAAAId4/Jzj3FesR28I/s800/SSWF-NasiLemak.jpg", price: 4.90, description: "Coconut and lots of fried food")
chicken = Dish.create(name: "Chicken Rice", img: "http://steamykitchen.com/wp-content/uploads/2009/08/hainanese-chicken-86.jpg", price: 5.50, description: "Chicken and rice")
briyani = Dish.create(name: "Briyani", img: "http://l.yimg.com/bt/api/res/1.2/zweVlqflCSwpBUPBGsaegA--/YXBwaWQ9eW5ld3M7cT04NTt3PTYzMA--/http://media.zenfs.com/en_SG/News/Makansutra/Chicken-Dum-Briyani.jpg", price: 7.60, description: "Rice and nice sauce")
beef = Dish.create(name: "Beef Soup", img: "http://www.living-lifestyle.co.za/wp-content/uploads/2015/11/beef-stew.png", price: 4.70, description: "Beef and soup")
roti = Dish.create(name: "Roti Prata", img: "http://www.gopenang.my/site/wp-content/uploads/2013/11/roti-canai.jpg", price: 3.10, description: "Roti and prata")
hokkien = Dish.create(name: "Hokkien Mee", img: "https://aromacookery.files.wordpress.com/2009/07/huatheng_01.jpg", price: 3.50, description: "Prawns la den")
curry = Dish.create(name: "Curry Fish Head", img: "http://www.expatliving.sg/Wine_and_dine/restaurants/article26349.ece/alternates/w1024/Fish%20Head%20Curry.jpg", price: 15.60, description: "Fish and coconut and nice lady fingers")

Category.create(name: "Malay")
Category.create(name: "Indian")
Category.create(name: "Chinese")
Category.create(name: "Others")



jon.dishes << mee
jon.dishes << roti
# jon.save

hamkimchi.dishes << nasi
hamkimchi.dishes << hokkien
# hamkimchi.save

siwei.dishes << chicken
siwei.dishes << curry
# siwei.save

jolozy.dishes << briyani
# jolozy.save

mary.dishes << beef
# mary.save
