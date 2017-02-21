require 'mtg_sdk'

class CardsController < ApplicationController

	def show
  	cards = MTG::Card.where(supertype: 'legendary').all
  end

end
