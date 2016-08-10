json.array!(@rentals) do |rental|
  json.extract! rental, :id, :name, :address, :property_type, :tenure, :size, :psf, :listingID, :price, :beds, :baths, :furnishing, :floor_level, :agent
  json.url rental_url(rental, format: :json)
end
