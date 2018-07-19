json.extract! venue_listing, :id, :image, :description, :cost, :date, :company_id, :created_at, :updated_at
json.url venue_listing_url(venue_listing, format: :json)
