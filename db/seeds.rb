# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'
require "nokogiri"


puts "Dropping database!"
Stop.destroy_all
Topic.destroy_all
User.destroy_all
Train.destroy_all
TravelMatch.destroy_all
Travel.destroy_all
UserTopic.destroy_all
puts "Done."

puts "Resetting id's..."
ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end
puts "Done!"

puts "Creating user..."
User.create!([{
  email: 'negroni@cool.com',
  password: '123456',
  nickname: 'Wolle'
},
{
  email: 'thirsty@cool.com',
  password: '123456',
  nickname: 'HackingNoob'
},
{
  email: 'dry@3.com',
  password: '123456',
  nickname: 'DRY'
}
]);

puts "Create #{User.count} User."

puts "Creating trains..."

Train.create!([{
  name: 'ICE789',
},
{
  name: 'IC10',
}
]);

puts "Create #{Train.count} trains."

puts "Creating stops...."

Stop.create!([{
  place: 'Berlin Köpenick',
  time: '17.43',
  train_id: 1,
},
{
  place: 'Berlin Kuhdamm',
  time: '19.43',
  train_id: 2,
},
{
  place: 'Berlin Kreuzberg',
  time: '18.43',
  train_id: 1,
},
{
  place: 'Berlin Prenzlauer Berg',
  time: '19.59',
  train_id: 2,
}
]);

puts "Create #{Stop.count} stops."

puts "Creating topics..."

Topic.create!([{
  name: 'Algebra',
},
{
  name: 'Art'
},
{
  name: 'Sports',
},
{
  name: 'Books',
},
{
  name: 'Tech',
},
{
  name: 'Fashion',
},
{
  name: 'Lifestyle',
},
{
  name: 'Cars',
},
{
  name: 'Beauty',
},
{
  name: 'Antiquity',
}
]);

puts "Create #{Topic.count} topics."

puts "Creating travels...."

Travel.create!([{
  user_id: 1,
  train_id: 1,
  start_date: '17.44',
  end_date: '19.44',
},
{
  user_id: 2,
  train_id: 1,
  start_date: '16.59',
  end_date: '20.44',
},
{
  user_id: 3,
  train_id: 2,
  start_date: '11.33',
  end_date: '12.02',
},
]);

puts "Create #{Travel.count} travels."

# puts "Creating user topics..."

# UserTopic.create!([{
#   user_id: 1,
#   topic_id: 1,
# },
# {
#   user_id: 1,
#   topic_id: 2,
# },
# {
#   user_id: 1,
#   topic_id: 3,
# },
# {
#   user_id: 2,
#   topic_id: 1,
# },
# {
#   user_id: 2,
#   topic_id: 3,
# },
# {
#   user_id: 2,
#   topic_id: 7,
# },
# {
#   user_id: 3,
#   topic_id: 1,
# },
# {
#   user_id: 3,
#   topic_id: 4,
# },
# {
#   user_id: 3,
#   topic_id: 9,
# }
# ]);

puts "Create #{UserTopic.count} user topics."

puts "Creating travel matches..."

# TravelMatch.create!([{
#   searcher_id: 1,
#   maker_id: 2,
# },
# {
#   searcher_id: 2,
#   maker_id: 3,
# },
# {
#   searcher_id: 1,
#   maker_id: 3,
# },
# ]);

puts "Create #{TravelMatch.count} travel matches."








