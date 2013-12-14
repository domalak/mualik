json.array!(@cards) do |card|
  json.extract! card, :first_name, :last_name, :middle_name, :photo_url, :likes
  json.url card_url(card, format: :json)
end
