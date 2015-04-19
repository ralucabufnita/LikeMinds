json.array!(@ideas) do |idea|
  json.extract! idea, :id, :title, :category, :content, :userId, :created_at, :updated_at
  json.url idea_url(idea, format: :json)
end
