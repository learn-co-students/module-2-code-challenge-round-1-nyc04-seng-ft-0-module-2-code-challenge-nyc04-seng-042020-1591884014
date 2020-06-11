class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(params_collection)


    if @appearance.valid?
      redirect_to episode_path(@appearance.episode)
    else
      flash[:errors] = "Incorrect Rating!"
      redirect_to new_appearance_path(@appearance) #(@appearance.episode)
    end
  end

  private 

  def params_collection
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end
end

