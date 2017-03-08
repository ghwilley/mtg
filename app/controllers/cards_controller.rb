require 'mtg_sdk'

class CardsController < ApplicationController

  def index  
		@cards = Card.all
    if params[:search]
     @cards = Card.order(:name).where("name ILIKE ?", "%#{params[:search]}%")
    else
    end

  respond_to do |format|  
    format.html 
    @cards = MTG::Card.where(name: :search).all
    format.json { render :json => @cards.to_json }
    end
	end


	def new
		@card = Card.new
	end

	def show
      @cards = Card.where(multiverse_id: params[:id])
  end

  def create
    def card_params
      params.require(:card).permit(:name, :multiverseId)
    end
    @card = Card.new(card_params)

    respond_to do |format|
      if @card.save
        format.html { redirect_to @card, notice: 'Card was successfully added to the cube.' }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to @card, notice: 'Card was successfully updated.' }
        format.json { render :show, status: :ok, location: @card }
      else
        format.html { render :edit }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
	end

end