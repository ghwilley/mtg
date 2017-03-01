class CardsController < ApplicationController
	def search
	@cards = Card.order(:name).where("name LIKE ?", "%#{params[:term]}%")
    respond_to do |format|
      format.html
      format.json { 
        render json: @cards.map(&:name).to_json
      }
    end
	end

	def new
	end

	def create
		render plain: params[:card].inspect
	end

	def show
  end


end
