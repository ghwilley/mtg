require 'mtg_sdk'

class CardsController < ApplicationController
  respond_to do |format|
    format.html
    format.json { @cards = Card.search_db(params[:term]) }
  end


	def new
	end

	def create
		render plain: params[:card].inspect
	end

	def show
  	@cards = MTG::Card.where(set: 'ktk').where(subtypes: 'warrior,human').all
  end


end
