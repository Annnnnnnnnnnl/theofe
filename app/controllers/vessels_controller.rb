class VesselsController < ApplicationController

    before_action :set_vessel, only: [:show, :edit, :update]
    before_action :authenticate_user!, except: [:show]

    def index
      @vessels = current_user.vessels
    end

    def show

    end

    def new
      @vessel= current_user.vessels.build
    end

    def create
      puts vessel_params.inspect
      puts current_user
      @vessel = current_user.vessels.build(vessel_params)

      puts @vessel.inspect

      if @vessel.save
        redirect_to @vessel, notice: "Saved..."
      else
        render :new
      end
    end

    def edit

    end

    def update
      if @vessel.update(vessel_params)
        redirect_to @vessel, notice: "Updated..."
      else
        render :edit
      end
    end

    private
      def set_vessel
        @vessel = Vessel.find(params[:id])
      end

      def vessel_params
        params.require(:vessel).permit(:name, :price,:vessel_type, :dwt, :age, :country_built, :imo_no, :delivery_area, :delivery_date, :description)
      end
  end
