class SpicesController < ApplicationController
    def index
        spices = Spice.all
        render json: spices
    end

    def create
        new_spice = Spice.create(spice_params)
        render json: new_spice, status: :created
    end

    def update
        udpate_spice = Spice.find(params[:id])
        udpate_spice.update(spice_params)
        render json: udpate_spice
    end

    def destroy
        delete_spice = Spice.find(params[:id])
        delete_spice.destroy
    end

    private 
    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end
end
