# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create!(
  [
    {
      username: 'chao',
      password: 'password',
      email: 'mailbox.chao.cao@gmail.com',
    },

    {
      username: 'demouser',
      password: 'password',
      email: 'demouser@demo.user',
    },
  ]
)

books = Book.create!(
  [
    {
      title: '100 Years of Solitude',
      author: 'Gabriel Garcia Marquez',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/61O-ltKJb9L._SX330_BO1,204,203,200_.jpg',
      description: "One Hundred Years of Solitude tells the story of the rise and fall, birth and death of the mythical town of Macondo through the history of the Buendia family.",

    }
  ]
)
