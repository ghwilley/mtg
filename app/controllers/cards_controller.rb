require 'mtg_sdk'

class CardsController < ApplicationController

  def index  
		@cards = Card.all
    if params[:search]
    @cards = MTG::Card.where(name: :search).all
     # @cards = Card.order(:name).where("name ILIKE ?", "%#{params[:search]}%")
    else
    end

  respond_to do |format|  
    format.html # index.html.erb  
		# Here is where you can specify how to handle the request for "/cards.json"
    format.json { render :json => @cards.to_json }
    end
	end


	def new
		@card = Card.new
		@cards = Card.all
		if params[:search]
    @cards = MTG::Card.where(name: :search).all
     # @cards = Card.order(:name).where("name ILIKE ?", "%#{params[:search]}%")
    else
    end

		respond_to do |format|  
    format.html # index.html.erb  
		# Here is where you can specify how to handle the request for "/cards.json"
    format.json { render :json => @cards.to_json }
    end
	end

	def show
  end

  def create
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