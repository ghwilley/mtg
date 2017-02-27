# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Card.create({ name: "Ball Lightning",
		mana_cost:"{R}{R}{R}",
		cmc:3,
		colors:["R"],
		card_type:"Creature — Elemental",
		supertypes:["Creature"],
		subtypes:["Elemental"],
		rarity:"Rare",set:"DRK",
		set_name:"The Dark",
		text:"Trample (This creature can deal excess combat damage to defending player or planeswalker while attacking.)\nHaste (This creature can attack and {T} as soon as it comes under your control.)\nAt the beginning of the end step, sacrifice Ball Lightning.",
		artist:"Quinton Hoover",
		power:"6",
		"toughness":"1",
		layout:"normal",
		multiverse_id:1783,
		image_url:"http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=1783&type=card",
		rulings:[{"date":"2007-02-01","text":"The creature is sacrificed at the end of every turn in which it is on the battlefield. There is no choice about what turn to sacrifice it."}],
		printings:["DRK","4ED","5ED","pJGP","BTD","MED","M10","PD2"],
		original_text:"Trample\nBall Lightning may attack on the turn during which it is summoned. Ball Lightning is buried at the end of the turn during which it is summoned.",
		original_type:"Summon — Ball Lightning",
		legalities:[{"format":"Commander","legality":"Legal"},{"format":"Legacy","legality":"Legal"},{"format":"Modern","legality":"Legal"},{"format":"Vintage","legality":"Legal"}],
	id_code:"d7e1cba15888f4a6e82081a4c14123136fb9eb85"})

