json.extract! closest_station, :id, :route_name, :station_name, :duration, :created_at, :updated_at
json.url closest_station_url(closest_station, format: :json)
