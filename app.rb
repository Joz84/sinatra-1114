require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @date = Time.now
  @restaurants = Restaurant.all
  erb :index
end

get '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end

post '/restaurants' do
  name = params[:name]
  city = params[:city]
  @restaurant = Restaurant.new(
    name: name, 
    city: city,
    url: "https://toohotel.com/wp-content/uploads/2022/09/TOO_restaurant_Panoramique_vue_Paris_nuit_v2-scaled.jpg"
  )
  @restaurant.save
  redirect "/"
end