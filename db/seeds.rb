# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.delete_all
Genre.delete_all

genres = ["Rock", "Pop", "Latina", "indie", "Dance", "Hip Hop", "Blues", "Metal", "Soul", "Jazz", "Romantica", "Punk", "Clasica"]

genres.each_with_index do |e, i|
	c = Genre.new(name: e)
	10.times do |j|
		c.songs.build(name: Faker::Book.title, duration: Faker::Number.between(1, 10) )
	end
	c.save!
end