class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(appearance_params)
        @episode = @appearance.episode_id
        if @appearance.save
            redirect_to episode_path(@episode)
        else
            render :new
        end
    end

    private

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end
