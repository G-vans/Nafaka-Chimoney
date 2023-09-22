class FarmersController < ApplicationController

    def index
        @farmers = Farmer.all
    end

    def show
        @farmer = Farmer.find(params[:id])
    end

    def create
        @farmer = Farmer.new(farmer_params)
        if @farmer.save
            format.html { redirect_to root_path, notice: "Farmer was successfully created." }
        format.json { render :show, status: :created, location: @farmer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @farmer.errors, status: :unprocessable_entity }
      end
    end

    private
    def farmer_params
        params.require(:farmer).permit(:name, :contact)
    end
end
