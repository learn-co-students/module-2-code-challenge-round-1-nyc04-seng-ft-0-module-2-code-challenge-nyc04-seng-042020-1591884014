class AppearancesController < ApplicationController

  
  

  def index
    @appearances = Appearance.all
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    # byebug
    appearance = Appearance.create(appearance_param(:rating, :guest_id, :episode_id))
    
    if appearance.valid?
      episode = Episode.find(appearance.episode_id)
      redirect_to episode_path(episode)
    else
      flash[:error_msg] = appearance.errors.messages
      redirect_to new_appearance_path
    end

    
  end

  private

  def appearance_param(*arg)
    params.require(:appearance).permit(arg)
  end
end
