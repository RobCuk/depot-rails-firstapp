# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# encoding: utf-8

Product.delete_all
Product.create!(title: 'Greatest product ever',
                description:
    %(<p>
      <em>Did you ever want something so great as this?</em>
      Well, now you can have the greatest product ever, right in the palm of your hands!
      What does this product do? Well, I better ask you, what doesn't it do, so order now!
      For the small price of 99.99 you will get this product delivered right onto your doorstep
      in the period of two to three months!
      </p>),
                image_url: 'aha.png',
                price: 99.99)
# . . .
Product.create!(title: 'Minecraft',
                description:
    %(<p>
      <em>Building blocks for adults</em>
      Did you ever want to place <em> brown bricks </em>?
      Did you ever want to place multiple <em> brown bricks </em>
      Well then, you are in a treat with
      <em> MINECRAFT </em>
      </p>),
                image_url: 'minecraft.jpg',
                price: 13.49)
# . . .

Product.create!(title: 'Lenovo top tier laptops!',
                description:
    %(<p>
      <em>Lenovo Laptops!</em>
      Do you want to feel like you are worthless and that the laptop you bought is a waste of time?
      Buy Lenovo products! We have the most optimized stress levels in comparison to work enviroments around the world!
      Lenovo, ruin your dreams.
      </p>),
                image_url: 'lenovo.jpg',
                price: 1000.00)
