json.extract! snapshot, :id, :location, :alpa2_code, :latitude, :longitude, :deaths, :created_at, :updated_at
json.url snapshot_url(snapshot, format: :json)
