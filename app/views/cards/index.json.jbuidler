json.array!(@cards) do |card|
  json.extract! card, :multiverse_id, :name
  json.url card_url(card, format: :json)
end