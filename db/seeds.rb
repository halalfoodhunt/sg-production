# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ProductQualifyingType.delete_all
ProductQualifyingType.create! id: 1, name: "Halal Certified Products Available", image: File.new("public/images/media/halal_certified.png")
ProductQualifyingType.create! id: 2, name: "Halal Exclusive Store", image: File.new("public/images/media/halal_certified.png")
ProductQualifyingType.create! id: 3, name: "Muslim Manufacturer", image: File.new("public/images/media/muslim_owned.png")