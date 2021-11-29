# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tolkien = Author.create!(
  first_name: 'John',
  last_name: 'Tolkien'
)

george_martin = Author.create!(
  first_name: 'George',
  last_name: 'Martin'
)

stephen_king = Author.create!(
  first_name: 'Stephen',
  last_name: 'King'
)

Book.create(
  [
    {
      title: 'Carrie, a estranha',
      description: 'Carrie, a estranha é um romance de terror',
      author: stephen_king
    },
    {
      title: 'O Iluminado',
      description: 'O Iluminado é um romance de terror',
      author: stephen_king
    },
    {
      title: 'Fogo e Sangue',
      description: 'Fogo e Sangue é um romance de medieval',
      author: george_martin
    },
    {
      title: 'As crônicas de gelo e fogo',
      description: 'As crônicas de gelo e fogo é um romance de medieval',
      author: george_martin
    },
    {
      title: 'O senhor dos anéis',
      description: 'O senhor dos anéis é um romance de medieval',
      author: tolkien
    },
    {
      title: 'O Hobbit',
      description: 'O Hobbit é um romance de medieval',
      author: tolkien
    }
  ]
)
