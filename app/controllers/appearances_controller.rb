class AppearancesController < ApplicationController
  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
    render.new
  end

  def create
    @appearance = Appearance.create(check_params)
    #REMINDER: MUST UPDATE MODELS W/ VALIDATION
    # if appearance.valid?
    #   redirect_to appearances_path
    # else
    #   flash[:errors] = @appearance.errors.full_messages
    #   redirect_to new_appearance_path
    # end
    #Ran out of time to add error to view/template
    @appearance.new = Appearance.new
    @appearance.guest_id = params[:guest_id]
    @apperance.episode_id = params[:episode_id]
    @appearance.rating = params[:rating]
    @appearance.save
    redirect_to appearance_path(@appearance)
  end

end
