json.extract! location, :id, :name, :address, :city, :state, :zip, :created_at, :updated_at
json.url location_url(location, format: :json)
