json.array!(@user_details) do |user_detail|
  json.extract! user_detail, :id, :nickname, :likes, :user_id, :rating, :postCount
  json.url user_detail_url(user_detail, format: :json)
end
