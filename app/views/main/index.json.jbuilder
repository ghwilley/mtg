json.array!(@cards) do |card|
  json.title        card.title
  json.author       card.author
  json.price        number_to_currency(card.price)
  json.image_url    card.image_url
end