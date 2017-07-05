# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
i = Issue.create(headline: "IMI News SS2017", released_at: "2017-07-28")
i.blog_entries.create(title: "Sommerfest am 5.7.",teaser: "im G008")
i.blog_entries.create(title: "Showtime am 28.7",teaser: "tolle Projekte!")
