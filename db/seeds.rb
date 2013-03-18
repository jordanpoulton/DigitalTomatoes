# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


["Arts", "Business", "Comedy", "Education", "Games/Hobbies", "Government/Orgs", "Health", "Kids/Family", "Music", "News/Politics", "Religion/Spirit", "Science/Medicine", "Society/Culture", "Sports/Recreation", "TV/Film", "Technology" ].each {|x| Genre.create(:name=> x)}

