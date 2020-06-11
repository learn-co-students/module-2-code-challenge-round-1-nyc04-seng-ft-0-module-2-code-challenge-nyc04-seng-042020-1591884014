class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
    end 

    def create
        @appearance = Appearance.create(guest_id: params[:appearance][:guest_id], episode_id: params[:appearance][:episode_id], rating: params[:appearance][:rating])

        if @appearance.valid? 
            redirect_to episode_path(@appearance.episode)
        else 
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

end
  