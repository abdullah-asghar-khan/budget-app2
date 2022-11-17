# frozen_string_literal: true

require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

(1..4).each do |id|
  User.create!(
    # each user is assigned an id from 1-20
    id:,
    name: Faker::Name.name,
    email: Faker::Internet.email,
    # issue each user the same password
    password: 'password',
    password_confirmation: 'password',
    # a user can have only one of these roles
    role: %w[customer admin agent].sample
  )
end
