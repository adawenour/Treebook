json.array!(@comments) do |comment|
  json.extract! comment, :id, :status_id, :body
  json.url comment_url(comment, format: :json)
end
