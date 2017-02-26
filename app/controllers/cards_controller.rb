require 'mtg_sdk'

class CardsController < ApplicationController
	def new
	end

	def create
		render plain: params[:card].inspect
	end

	def show
  	cards = MTG::Card.where(set: 'ktk').where(subtypes: 'warrior,human').all
  end

end
