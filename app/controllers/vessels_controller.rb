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
      @vessel = current_user.vessels.build(vessel_params)

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
        params.require(:vessel).permit(:type, :dwt, :age, :country_built, :imo_no, :delivery_area, :dellivery_date, :description)
      end
  end

end
