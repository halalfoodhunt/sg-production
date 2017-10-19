# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.delete_all
AdminUser.create!(:email => 'info@halalfoodhunt.com', :password => 'Halal12345!', :password_confirmation => 'Halal12345!')

BakerProductCategory.delete_all
BakerProductCategory.create! id: 1, name: "Cakes"
BakerProductCategory.create! id: 2, name: "Cookies"
BakerProductCategory.create! id: 3, name: "Chocolates"
BakerProductCategory.create! id: 4, name: "Tarts"
BakerProductCategory.create! id: 5, name: "Traditional Kueh"
BakerProductCategory.create! id: 6, name: "Pies"
BakerProductCategory.create! id: 7, name: "Puffs"
BakerProductCategory.create! id: 8, name: "Custom Orders"

BakerServiceType.delete_all
BakerServiceType.create! id: 1, name: "Delivery"
BakerServiceType.create! id: 2, name: "Self Collection"
BakerServiceType.create! id: 3, name: "Wedding"
BakerServiceType.create! id: 4, name: "Provide Baking Classes"

EventType.delete_all
EventType.create! id: 1, name: "Cocktail & Tea Reception"
EventType.create! id: 2, name: "Birthday Parties"
EventType.create! id: 3, name: "Baby Shower"
EventType.create! id: 4, name: "House Warming"
EventType.create! id: 5, name: "Wedding"
EventType.create! id: 6, name: "Seminar"
EventType.create! id: 7, name: "Corporate Events"

CuisineType.delete_all
CuisineType.create! id: 1, name: "Malay"
CuisineType.create! id: 2, name: "Chinese"
CuisineType.create! id: 3, name: "Indian"
CuisineType.create! id: 4, name: "Thai"
CuisineType.create! id: 5, name: "Indonesian"

CatererServiceType.delete_all
CatererServiceType.create! id: 1, name: "Bento Sets"
CatererServiceType.create! id: 2, name: "Tingkat Meals"
CatererServiceType.create! id: 3, name: "Full Buffet Set Up"
CatererServiceType.create! id: 4, name: "Mini Buffet Set Up"
CatererServiceType.create! id: 5, name: "Mini Catering (5 to 10 pax)"
CatererServiceType.create! id: 6, name: "Live Stations"
CatererServiceType.create! id: 7, name: "Event Venue Available"
CatererServiceType.create! id: 8, name: "Venue Decor Service Available"

CatererType.delete_all
CatererType.create! id: 1, name: "Wedding"
CatererType.create! id: 2, name: "Corporate"
CatererType.create! id: 3, name: "Events"
CatererType.create! id: 4, name: "Live Station"

RawFoodProductCategory.delete_all
RawFoodProductCategory.create! id: 1, name: "Halal Meat"
RawFoodProductCategory.create! id: 2, name: "Fresh Poultry"
RawFoodProductCategory.create! id: 3, name: "Fresh Produce"
RawFoodProductCategory.create! id: 4, name: "Spices"
RawFoodProductCategory.create! id: 5, name: "Baking Needs"
RawFoodProductCategory.create! id: 6, name: "Pre-mixes"
RawFoodProductCategory.create! id: 7, name: "Pastes"
RawFoodProductCategory.create! id: 8, name: "Seafood"
RawFoodProductCategory.create! id: 9, name: "Fish"
RawFoodProductCategory.create! id: 10, name: "Frozen Seafood"
RawFoodProductCategory.create! id: 11, name: "Coffee"
RawFoodProductCategory.create! id: 12, name: "Flavour Enhancers"

ProductCategory.delete_all
ProductCategory.create! id: 1, name: "Drinks"
ProductCategory.create! id: 2, name: "Frozen"
ProductCategory.create! id: 3, name: "Spices"
ProductCategory.create! id: 4, name: "Pre-mixes"
ProductCategory.create! id: 5, name: "Snacks"
ProductCategory.create! id: 6, name: "Dried Fruits"
ProductCategory.create! id: 7, name: "Kueh"
ProductCategory.create! id: 8, name: "Chocolate"
ProductCategory.create! id: 9, name: "Desserts"

OnlineRetailServiceType.delete_all
OnlineRetailServiceType.create! id: 1, name: "Delivery"
OnlineRetailServiceType.create! id: 2, name: "Self collection"
OnlineRetailServiceType.create! id: 3, name: "Supermarket"

MainOrderingMethod.delete_all
MainOrderingMethod.create! id: 1, name: "Call to order"
MainOrderingMethod.create! id: 2, name: "Order via App"
MainOrderingMethod.create! id: 3, name: "Order Via Website"

HomieServiceType.delete_all
HomieServiceType.create! id: 1, name: "Delivery"
HomieServiceType.create! id: 2, name: "Self Collection"
HomieServiceType.create! id: 3, name: "Pop-up Booth"
HomieServiceType.create! id: 4, name: "Events Live Stations"
HomieServiceType.create! id: 5, name: "Wedding"

MenuItem.delete_all
MenuItem.create! id: 1, name: "Bakes"
MenuItem.create! id: 2, name: "Cakes"
MenuItem.create! id: 3, name: "Cookies"
MenuItem.create! id: 4, name: "Snacks"
MenuItem.create! id: 5, name: "Dried Fruits"
MenuItem.create! id: 6, name: "Sandwiches"
MenuItem.create! id: 7, name: "Meals"
MenuItem.create! id: 8, name: "Party-Meals"
MenuItem.create! id: 9, name: "Dulang Meals"
MenuItem.create! id: 10, name: "Tingkat Meals"
MenuItem.create! id: 11, name: "Pasta"
MenuItem.create! id: 12, name: "Pizza"

DeliveryServiceType.delete_all
DeliveryServiceType.create! id: 1, name: "Family Meals"
DeliveryServiceType.create! id: 2, name: "Events & Seminars"
DeliveryServiceType.create! id: 3, name: "Bento Sets"
DeliveryServiceType.create! id: 4, name: "Tingkat Meals"
DeliveryServiceType.create! id: 5, name: "Office Lunch Orders"
DeliveryServiceType.create! id: 6, name: "Party Packs"

DeliveryLocation.delete_all
DeliveryLocation.create! id: 1, name: "Central"
DeliveryLocation.create! id: 2, name: "East"
DeliveryLocation.create! id: 3, name: "North"
DeliveryLocation.create! id: 4, name: "North East"
DeliveryLocation.create! id: 5, name: "West"
DeliveryLocation.create! id: 6, name: "Island-wide"
DeliveryLocation.create! id: 7, name: "Self-collect only"
DeliveryLocation.create! id: 8, name: "None"

OrderingMethod.delete_all
OrderingMethod.create! id: 1, name: "Call to Order"
OrderingMethod.create! id: 2, name: "Website"
OrderingMethod.create! id: 3, name: "Sms or Whatsapp to order"
OrderingMethod.create! id: 4, name: "Order via Email"
OrderingMethod.create! id: 5, name: "Order via App"
OrderingMethod.create! id: 6, name: "Order via Instagram"
OrderingMethod.create! id: 7, name: "Order via Facebook"
OrderingMethod.create! id: 8, name: "Visit our Pop Up Booth"

HomiesType.delete_all
HomiesType.create! id: 1, name: "Home Business"
HomiesType.create! id: 2, name: "Home Cook"
HomiesType.create! id: 3, name: "Home Baker"
HomiesType.create! id: 4, name: "Pop Up Booth"

DiningType.delete_all
DiningType.create! id: 1, name: "Buffet", icon: File.new("public/images/media/buffet.png")
DiningType.create! id: 2, name: "Cafe-Bistro", icon: File.new("public/images/media/cafe-bistro.png")
DiningType.create! id: 3, name: "Cafeteria", icon: File.new("public/images/media/cafeteria.png")
DiningType.create! id: 4, name: "Hawker", icon: File.new("public/images/media/hawker.png")
DiningType.create! id: 5, name: "Restaurant", icon: File.new("public/images/media/restaurant.png")
DiningType.create! id: 6, name: "Take-Out (Bakery)", icon: File.new("public/images/media/take-out-bakery.png")
DiningType.create! id: 7, name: "Alfresco", icon: File.new("public/images/media/outdoor-dining.png")
DiningType.create! id: 8, name: "Take-Out", icon: File.new("public/images/media/take-out.png")
DiningType.create! id: 9, name: "Others", icon: File.new("public/images/media/restaurant.png")

Feature.delete_all
Feature.create! id: 1, name: "24 Hours", icon: File.new("public/images/media/24-hours.png")
Feature.create! id: 2, name: "Air-Conditioning", icon: File.new("public/images/media/air-conditioning.png")
Feature.create! id: 3, name: "Bus Stop Nearby", icon: File.new("public/images/media/bus-stop-nearby.png")
Feature.create! id: 4, name: "For Big Groups", icon: File.new("public/images/media/for-big-groups.png")
Feature.create! id: 5, name: "For Birthday Parties", icon: File.new("public/images/media/birthday-parties.png")
Feature.create! id: 6, name: "For Business Meetings", icon: File.new("public/images/media/business-meetings.png")
Feature.create! id: 7, name: "MRT Nearby", icon: File.new("public/images/media/train.png")
Feature.create! id: 8, name: "Private Functions Booking", icon: File.new("public/images/media/private-events.png")
Feature.create! id: 9, name: "Reservations Available", icon: File.new("public/images/media/reservation-available.png")
Feature.create! id: 10, name: "Wedding Bookings", icon: File.new("public/images/media/wedding-bookings.png")
Feature.create! id: 11, name: "Wi-fi Available", icon: File.new("public/images/media/wifi.png")
Feature.create! id: 12, name: "Healthy Options Available", icon: File.new("public/images/media/healthy-choice.png")
Feature.create! id: 13, name: "Mosque / Musollah Nearby", icon: File.new("public/images/media/mosque.png")
Feature.create! id: 14, name: "Kid's Menu Available", icon: File.new("public/images/media/kid-friendly.png")
Feature.create! id: 15, name: "Breastfeeding Room", icon: File.new("public/images/media/breastfeeding.png")
Feature.create! id: 16, name: "Musollah Available in-house", icon: File.new("public/images/media/musollah.png")
Feature.create! id: 17, name: "Food Delivery Available", icon: File.new("public/images/media/delivery-available.png")
Feature.create! id: 18, name: "FRIENDS Rewards", icon: File.new("public/images/media/friends-rewards.png")

BakerType.delete_all
BakerType.create! id: 1, name: "Professional Baker"
BakerType.create! id: 2, name: "Chef's Baker"
BakerType.create! id: 3, name: "Confectionery"

Day.delete_all
Day.create! id: 1, name: "Monday"
Day.create! id: 2, name: "Tuesday"
Day.create! id: 3, name: "Wednesday"
Day.create! id: 4, name: "Thursday"
Day.create! id: 5, name: "Friday"
Day.create! id: 6, name: "Saturday"
Day.create! id: 7, name: "Sunday"

Discount.delete_all
Discount.create! id: 1, name: "10% Off", icon: File.new("public/images/media/10-percent.png")
Discount.create! id: 2, name: "15% Off", icon: File.new("public/images/media/15-percent.png")
Discount.create! id: 3, name: "20% Off", icon: File.new("public/images/media/20-percent.png")
Discount.create! id: 4, name: "Exclusive Deals", icon: File.new("public/images/media/exclusive-deal.png")

QualifyingType.delete_all
QualifyingType.create! id: 1, name: "Muslim-Owned", image: File.new("public/images/media/muslim_owned.png")
QualifyingType.create! id: 2, name: "Halal Certified", image: File.new("public/images/media/halal_certified.png")

ProductQualifyingType.delete_all
ProductQualifyingType.create! id: 1, name: "Halal Certified Products Available"
ProductQualifyingType.create! id: 2, name: "Halal Exclusive Store"

PlaceType.delete_all
PlaceType.create! id: 1, name: "Dine-in", image: File.new("public/images/media/dine-in.png")
PlaceType.create! id: 2, name: "Take-Out", image: File.new("public/images/media/take-out.png")

Location.delete_all
Location.create! id: 1, name: "Central"
Location.create! id: 2, name: "East"
Location.create! id: 3, name: "North"
Location.create! id: 4, name: "North-East"
Location.create! id: 5, name: "West"

Listing.delete_all
Listing.create! id: 1, name: "Places", icon: File.new("public/images/media/place.png")
Listing.create! id: 2, name: "Homies & Pop-Ups", icon: File.new("public/images/media/pop-up.png")
Listing.create! id: 3, name: "Food Deliveries", icon: File.new("public/images/media/food-delivery.png")
Listing.create! id: 4, name: "Caterers", icon: File.new("public/images/media/caterer.png")
Listing.create! id: 5, name: "Online Product Retail", icon: File.new("public/images/media/online-grocer.png")
Listing.create! id: 6, name: "Suppliers", icon: File.new("public/images/media/supplier.png")
Listing.create! id: 7, name: "Raw Food", icon: File.new("public/images/media/raw-food.png")
Listing.create! id: 8, name: "Bakers & Confectioners", icon: File.new("public/images/media/bakery.png")
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?