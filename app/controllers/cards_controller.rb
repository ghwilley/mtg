require 'mtg_sdk'

class CardsController < ApplicationController
  # respond_to do |format|
  #   format.html
  #   format.json { @cards = Card.search_db(params[:term]) }
  # end

  def index  
# I will explain this part in a moment.
  if params[:name]
    @cards = Card.where('name LIKE ?',  "%#{:name}%").order(name)
  else
    @cards = Card.all
  end

  respond_to do |format|  
    format.html # index.html.erb  
# Here is where you can specify how to handle the request for "/cards.json"
    format.json { render :json => @cards.to_json }
    end
end


	def new
		@card = Card.new

		respond_to do |format|  
    format.html # index.html.erb  
# Here is where you can specify how to handle the request for "/cards.json"
    format.json { render :json => @cards.to_json }
    end
	end

	def create
		render plain: params[:card].inspect
	end

	def show
  	# @cards = MTG::Card.where(set: 'ktk').where(subtypes: 'warrior,human').all
  end


end
