json.array!(@bathrooms) do |bathroom|
  json.extract! bathroom, :id, :longitude, :latitude, :location, :floor_no, :user_id, :post_time, :restroom_hours
  json.url bathroom_url(bathroom, format: :json)
end
