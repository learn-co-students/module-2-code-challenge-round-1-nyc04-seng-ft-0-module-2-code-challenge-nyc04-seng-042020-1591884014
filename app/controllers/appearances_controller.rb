class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
  end

  def create
    appearance = Appearance.create(appearance_params)

    if appearance.valid? 
      redirect_to episode_path(appearance.episode)
    end
  end

  private 

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end
end
