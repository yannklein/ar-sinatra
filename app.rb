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

# As a user I can list all the restaurants
# As a user I can see one restaurant's details
# As a user I can add a restaurant

get "/" do
  "Hello world!"
end
