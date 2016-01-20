# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
c = Contributor.create({"user_attributes"=>{"email"=>"contributor1@gmail.com", "password"=>"Stargazer88"}, "skill"=>"SQL", "website"=>"www.google.com", "company"=>"Google"})

