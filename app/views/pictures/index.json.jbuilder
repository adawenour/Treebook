json.array!(@pictures) do |picture|
  json.extract! picture, :id, :album_id, :user, :caption, :description
  json.url picture_url(picture, format: :json)
end
