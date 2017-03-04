json.extract! @card, :multiverse_id, :name, :created_at, :updated_at

# json.array!(@cards) do |card|
#   json.name        card.name
# 	json.multiverse_id card.multiverse_id
# 	json.layout 				card.layout
# 	json.names 				card.names
# 	json.mana_cost 		card.mana_cost
# 	json.cmc 						card.cmc
# 	json.colors 				card.colors
# 	json.card_type 				card.card_type
# 	json.supertypes 			card.supertypes
# 	json.subtypes 				card.subtypes
# 	json.rarity 					card.rarity
# 	json.text 						card.text
# 	json.flavor					 card.flavor
# 	json.artist 					card.artist
# 	json.number 				card.number
# 	json.power 					card.power
# 	json.toughness 			card.toughness
# 	json.loyalty 			card.loyalty
# 	json.variations 			card.variations
# 	json.watermark 			card.watermark
# 	json.border 				card.border
# 	json.timeshifted 				card.timeshifted
# 	json.hand 					card.hand
# 	json.life 					card.life
# 	json.reserved 		card.reserved
# 	json.release_date 		card.release_date
# 	json.starter 				card.starter
# 	json.rulings				 card.rulings
# 	json.foreign_names 	card.foreign_names
# 	json.printings 				card.printings
# 	json.original_text 		card.original_text
# 	json.original_type 		card.original_type
# 	json.legalities 			card.legalities
# 	json.source 			card.source
# 	json.image_url 			card.image_url
# 	json.set 					card.set
# 	json.set_name 		card.set_name
# 	json.id_code 		card.id_code
# end