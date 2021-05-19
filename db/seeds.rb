# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.create(name: 'McDonalds', category: 'french', address: '101 Meguro')
Restaurant.create(name: 'La Boheme', category: 'italian', address: '105 Shibuya')
Restaurant.create(name: 'Le Petit Tourette', category: 'french', address: '5 Shinjuku')
Restaurant.create(name: 'De Bruyne', category: 'belgian', address: '10 Manchester')
Restaurant.create(name: 'Ryans Den', category: 'chinese', address: 'Tokyo Sky Tree')
