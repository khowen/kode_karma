json.array!(@contributors) do |contributor|
  json.extract! contributor, :id, :skill, :website, :company
  json.url contributor_url(contributor, format: :json)
end
