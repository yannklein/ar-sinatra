require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

## ###############
##
## APP.RB
##
## This is your router.rb + restaurants_controller.rb
##
## ###############

# TODO

# As a user I can list all the restaurants DONE
# As a user I can see one restaurant's details DONE
# As a user I can add a restaurant DONE

# Ruby embedded into view files
# pe + tab   ->    <%=  %>     (display something)
# er + tab   ->    <%   %>     (display nothing)

# get == Read
# post == Create
get "/restaurants" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/:id" do
  restaurant_id = params[:id]
  @restaurant = Restaurant.find(restaurant_id)
  erb :show
end

post "/restaurants" do
  # Save the restaurant into the DB
  name = params[:name]
  city = params[:city]
  Restaurant.create(name: name, city: city)
  redirect "/restaurants"
end
