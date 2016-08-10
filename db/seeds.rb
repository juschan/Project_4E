# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'propertyguru_rentals_2.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  r = Rental.new
  r.name = row['name']
  r.address =row['address']
  r.property_type = row['property_type']
  r.tenure =row['tenure']
  r.size = row['size']
  r.psf = row['psf']
  r.listingID = row['listingID']
  r.price = row['price']
  r.beds =row['beds']
  r.baths = row['baths']
  r.furnishing = row['furnishing']
  r.floor_level = row['floor_level']
  r.agent = row['agent']
  r.save
  puts "#{r.name}, #{r.address} saved."
end

puts "There are now #{Rental.count} rows in the Rental table"
