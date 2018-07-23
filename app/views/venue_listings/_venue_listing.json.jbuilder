json.extract! venue_listing, :id, :venue_name, :description, :attendees, :location, :price, :hours, :image, :company_id, :created_at, :updated_at
json.url venue_listing_url(venue_listing, format: :json)
