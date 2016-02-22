json.array!(@lists) do |list|
  json.extract! list, :id, :id, :title, :address, :city, :zipcode, :country, :price, :bedrooms, :details, :agentName, :agencyName, :phone, :email, :geo_location, :bathrooms, :category, :region
  json.url list_url(list, format: :json)
end
