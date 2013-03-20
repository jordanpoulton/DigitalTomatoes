# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


["arts", "business", "comedy", "education", "games/hobbies", "government/orgs", "health", "kids/family", "music", "news/politics", "religion/spirit", "science/medicine", "society/culture", "sports/recreation", "tv/film", "technology" ].each {|x| Genre.create(:name=> x)}

