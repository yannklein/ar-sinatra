require 'faker'

10.times do
  # Restaurant.create == ( Restaurant.new + Restaurant.save)
  Restaurant.create(
    name: Faker::Restaurant.name,
    city: Faker::Address.city
    )
end
