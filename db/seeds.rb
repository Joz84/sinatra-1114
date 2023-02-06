require "faker"

10.times do |i|
    name = Faker::Company.name
    city = Faker::Address.city
    url = "https://toohotel.com/wp-content/uploads/2022/09/TOO_restaurant_Panoramique_vue_Paris_nuit_v2-scaled.jpg"
    restaurant = Restaurant.new(name: name, city: city, url: url)
    restaurant.save!
end