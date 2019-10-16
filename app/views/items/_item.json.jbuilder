json.extract! item, :id, :vendor_id, :model, :eol, :eos, :cost_per_year, :serial_number, :location_id, :notes, :onboard, :decom, :status_id, :created_at, :updated_at
json.url item_url(item, format: :json)
