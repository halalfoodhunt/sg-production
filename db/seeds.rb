# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ProductQualifyingType.delete_all
ProductQualifyingType.create! id: 1, name: "Halal Certified Products Available", halal_summary: "This online store sells halal certified & non-halal products. Halal-Certified products are clearly indicated in the product description, so check before purchasing!", image: File.new("public/images/media/halal_certified.png")
ProductQualifyingType.create! id: 2, name: "Halal Exclusive Store", halal_summary: "This online store is run and owned by muslims who sell only halal products, as guaranteed by the muslim owner of this store.", image: File.new("public/images/media/halal_certified.png")
ProductQualifyingType.create! id: 3, name: "Muslim Manufacturer", halal_summary: "Products sold on this online store are manufactured by a Muslim-owned Manufacturing company.", image: File.new("public/images/media/muslim_owned.png")
ProductQualifyingType.create! id: 4, name: "Halal Certified Manufacturing Plant ", halal_summary:"All products from this online store are manufactured in a Halal Certified Manufacturing Plant.", image: File.new("public/images/media/halal_certified.png")