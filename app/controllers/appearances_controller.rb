class AppearancesController < ApplicationController

    def new 
        @appearance = Appearance.new
        @episodes = Episode.all
        @guests = Guest.all 
    end

    def create 
        @appearance = Appearance.create(params.require(:appearance).permit(:guest_id, :episode_id, :rating))
        @appearance.save
        redirect_to @appearance.episode
    end
end
