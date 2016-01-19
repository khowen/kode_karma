json.array!(@organizations) do |organization|
  json.extract! organization, :id, :organization_name, :ein, :focus, :description, :location, :website
  json.url organization_url(organization, format: :json)
end
