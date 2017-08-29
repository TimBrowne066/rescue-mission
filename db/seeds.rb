# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Question.destroy_all
Answer.destroy_all

100.times do
  Question.create(title: "#{Faker::HitchhikersGuideToTheGalaxy.quote}", text: "#{Faker::TheFreshPrinceOfBelAir.quote}?")
end
1000.times do
  Answer.create(text: "#{Faker::HitchhikersGuideToTheGalaxy.marvin_quote}", question_id: rand(1..100), user_id: rand(1..10))
end
