class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        app_params = params.require(:appearance).permit(:guest_id, :episode_id, :rating)
        @appearance = Appearance.create(app_params)
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode_id)
        else
            @errors = @appearance.errors.full_messages
            @guests = Guest.all
            @episodes = Episode.all
            render :new
        end
    end

end
