class AppearancesController < ApplicationController

    def index
        @appearance = Appearance.all
    end

    def new
        @appearance = Appearance.new
    end

    def create 
        appearance_params = params.require(:appearance).permit(:episode_id, :guest_id, :rating)
        @appearance = Appearance.create(appearance_params)
        redirect_to episode_path(@appearance.episode_id)
    end
end
