# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "GENERATING SAMPLE DATA"

NUM_OF_POST = 1000

start = Time.now
for i in 0..NUM_OF_POST do
  post = Post.create!(:title => Faker::Lorem.sentence, :body => Faker::Lorem.paragraph)
end

puts "So far: #{(Time.now - start)/60} mins"