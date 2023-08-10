# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

stickers = Sticker.create([
    {name: "Yoda", image_url: "https://cdn.pixabay.com/photo/2021/08/22/22/51/yoda-6566301_1280.jpg", price: 0.99},
    {name: "R2-D2", image_url: "https://cdn.pixabay.com/photo/2017/03/25/06/57/star-wars-2172948_1280.jpg", price: 2.99},
    {name: "C-3PO", image_url: "https://cdn.pixabay.com/photo/2017/08/30/16/15/c-3po-2697682_1280.png", price: 1.20}
])

users = User.create([
    {first_name: "Luke", last_name: "Skywalker", email: 'luke@starwars.com'},
    {first_name: "Darth", last_name: "Vader", email: 'darkside@starwars.com'}
])

10.times { Order.create(user: users.sample, sticker: stickers.sample, quantity: rand(100)) }
