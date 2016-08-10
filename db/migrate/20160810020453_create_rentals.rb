class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :name
      t.string :address
      t.string :property_type
      t.string :tenure
      t.string :size
      t.string :psf
      t.integer :listingID
      t.string :price
      t.string :beds
      t.string :baths
      t.string :furnishing
      t.string :floor_level
      t.string :agent

      t.timestamps null: false
    end
  end
end
