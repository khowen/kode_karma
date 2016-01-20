json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :need_id, :need_type
  json.url post_url(post, format: :json)
end
