json.array!(@cheeps) do |cheep|
  json.extract! cheep, :id, :content, :user_id
  json.url cheep_url(cheep, format: :json)
end
