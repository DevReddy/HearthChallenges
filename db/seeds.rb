# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

classes = ["all", "paladin", "priest", "warrior", "shaman", "druid", "warlock", "mage", "rogue", "hunter"]

3.times do
	Challenge.create(author: Faker::Name.first_name, text: Faker::Lorem.sentence, rel_class: classes.sample)
end