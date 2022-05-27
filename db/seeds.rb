# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

# User.destroy_all
# puts 'destroyed all users'
# Capsule.destroy_all
# puts 'destroyed all capsules'

# 10.times do
#   user = User.create({
#                        username: Faker::Internet.unique.username,
#                        first_name: Faker::Name.first_name,
#                        last_name: Faker::Name.last_name,
#                        email: Faker::Internet.unique.email,
#                        password: '123456',
#                        password_confirmation: '123456'
#                      })
#   puts "Created user #{user.username}"
# end

# 20.times do
#   capsule = Capsule.create({
#                              name: Faker::Vehicle.manufacture,
#                              description: Faker::Vehicle.model,
#                              price: rand(1.00..1000.00).round(2),
#                              user_id: rand(1..10),
#                              number: rand(1..2402)
#                            })
#   puts "Created capsule #{capsule.name}"
# end
