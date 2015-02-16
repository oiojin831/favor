json.array!(@wishes) do |wish|
  json.extract! wish, :id, :wish_type, :done, :content, :user_id
  json.url wish_url(wish, format: :json)
end
